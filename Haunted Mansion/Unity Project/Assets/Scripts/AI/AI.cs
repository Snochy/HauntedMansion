using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class AI : MonoBehaviour {

    private GameObject aStar;
    public GameObject target;
    private GameObject player;

    private Node endNode;
    private Node startNode;
    private Queue queuePath = new Queue();

    public List<Node> path;
    public LayerMask mask;

    public bool targetReachable;
    public bool targetInLOS;

    public EntityID entityID;
    public int IDNumber;
    public double Sanity;
    public double Health;
    public bool willChase = false;
    public bool willRoam = false;
    public float chaseSpeed;
    public float roamSpeed;
    public float chaseDistance;

    void Start()
    {
        aStar = GameObject.Find("A*").gameObject;
    }

    public void InstantiateEntity(EntityID aID)
    {
        entityID = aID;
        Sanity = EntityBase.Get(aID).Sanity;
        Health = EntityBase.Get(aID).Health;
        willChase = EntityBase.Get(aID).willChase;
        willRoam = EntityBase.Get(aID).willRoam;
        chaseSpeed = EntityBase.Get(aID).Speed;
        roamSpeed = EntityBase.Get(aID).roamSpeed;
        chaseDistance = EntityBase.Get(aID).chaseDistance;
        player = GameObject.FindGameObjectWithTag("Player");
    }

	void Update () 
    {

        if(player == null)
            player = GameObject.FindGameObjectWithTag("Player");
        if (player != null)
            if (CheckLOSOfAI(player))
                target = player;
            else if (Vector3.Distance(transform.position, player.transform.position) > chaseDistance)
                target = null;

        if (target != null)
        {
            targetInLOS = CheckLOSOfAI(target);
            targetReachable = CheckIfReachable();
        }

        float speed = 0;

        if (targetInLOS)
        {
            speed = chaseSpeed * 1000f * Time.deltaTime;
            Vector3 moveDirection = target.transform.position - transform.position;
            var newRot = Quaternion.LookRotation(moveDirection);
            transform.rotation = Quaternion.Lerp(transform.rotation, newRot, 0.1f);
            gameObject.GetComponent<CharacterController>().Move(moveDirection.normalized * speed * Time.deltaTime);
        }
        else if (targetReachable && target != null)
        {
            speed = chaseSpeed * 1000f * Time.deltaTime;
            StartCoroutine(withTargetPath());
            if (queuePath.Count != 0)
            {
                Node currentNode = queuePath.Peek() as Node;
                Vector3 moveDirection = currentNode.transform.position - transform.position;
                var newRot = Quaternion.LookRotation(moveDirection);
                transform.rotation = Quaternion.Lerp(transform.rotation, newRot, 0.1f);
                gameObject.GetComponent<CharacterController>().Move(moveDirection.normalized * speed * Time.deltaTime);
                if (Vector3.Distance(this.transform.position, currentNode.GetPos()) <= 8f)
                    queuePath.Dequeue();
            }
        }
        else if (willRoam)
        {
            speed = roamSpeed * 1000f * Time.deltaTime;
            StartCoroutine(roamPath());
            if (queuePath.Count != 0)
            {
                Node currentNode = queuePath.Peek() as Node;
                Vector3 moveDirection = currentNode.transform.position - transform.position;
                var newRot = Quaternion.LookRotation(moveDirection);
                transform.rotation = Quaternion.Lerp(transform.rotation, newRot, 0.1f);
                gameObject.GetComponent<CharacterController>().Move(moveDirection.normalized * speed * Time.deltaTime);
                if (Vector3.Distance(this.transform.position, currentNode.GetPos()) <= 8f)
                    queuePath.Dequeue();
            }
        }
	}

    private IEnumerator withTargetPath()
    {
        endNode = aStar.GetComponent<Astar>().FindClosestNode(target);
        startNode = aStar.GetComponent<Astar>().FindClosestNode(this.gameObject);
        UpdatePath(endNode, startNode);
        yield return new WaitForSeconds(0.5f);
    }

    private IEnumerator roamPath()
    {
        if (queuePath.Count == 0)
        {
            startNode = aStar.GetComponent<Astar>().FindClosestNode(this.gameObject);
            endNode = startNode.RandomConnectedNode();
            UpdatePath(endNode, startNode);
        }
        yield return new WaitForSeconds(0.5f);
    }

    private void UpdatePath(Node endNde, Node startNode)
        {
            queuePath.Clear();
            if (endNode != null && startNode != null)
            {
                    path = aStar.GetComponent<Astar>().GetPath(startNode, endNode);

                    foreach (Node aNode in path)
                        queuePath.Enqueue(aNode);

                    int defaultLayer = this.gameObject.layer;
                    this.gameObject.layer = LayerMask.NameToLayer("Ignore Raycast");
                    mask = 1 << 2;
                    mask = ~mask;
                    if (queuePath.Count > 1)
                        for (int i = 0; i < queuePath.Count - 1; i++)
                            if (!Physics.Linecast(transform.position, path[i + 1].transform.position, mask))
                                queuePath.Dequeue();

                    this.gameObject.layer = defaultLayer;
            }
        }

    private bool CheckIfReachable()
    {
        endNode = aStar.GetComponent<Astar>().FindClosestNode(target);
        startNode = aStar.GetComponent<Astar>().FindClosestNode(this.gameObject);
        if (endNode == null || startNode == null)
            return false;
        else return true;
    }

    private bool CheckLOSOfAI(GameObject atarget)
    {
        RaycastHit rcHit;
        Vector3 centerOfEntity = new Vector3(transform.position.x, transform.position.y + 20f, transform.position.z);
        if (Physics.Raycast(transform.position, atarget.transform.position - transform.position, out rcHit, Mathf.Infinity))
            if (rcHit.transform.gameObject == atarget.transform.gameObject)
            {
                return true;
            }
            else return false;
        else return false;
    }
}
