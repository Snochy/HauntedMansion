using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class AI : MonoBehaviour
{

    private GameObject aStar;
    public GameObject target;
    private GameObject player;
    public AIState state;

    private Node endNode;
    private Node startNode;
    private Queue queuePath = new Queue();

    public List<Node> path;
    public LayerMask mask;

    public EntityID entityID;
    public int IDNumber;
    public double Sanity;
    public double Health;
    public bool willChase = false;
    public bool willRoam = false;
    public float chaseSpeed;
    public float roamSpeed;
    public float chaseDistance;

    public float currentSpeed;

    public float attackSpeed;
    public float attackPower;

    private float nextSwing = 0.0F;

    public enum AIState { IDLE, CHASE, FLEE };

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
        attackSpeed = EntityBase.Get(aID).attackSpeed;
        attackPower = EntityBase.Get(aID).attackPower;
    }

    void Update()
    {
        currentSpeed = 0;
        if (state == AIState.IDLE)
        {
            currentSpeed = roamSpeed;
            target = null;
            if (HasAggro())
            {
                state = AIState.CHASE;
            }
            else if (willRoam)
            {
                if (queuePath.Count == 0)
                    StartCoroutine(PathFinderRoam());
            }
            else
            {
                queuePath.Clear();
                path.Clear();
            }
        }
        else if (state == AIState.CHASE && willChase)
        {
            currentSpeed = chaseSpeed;
            if (HasLineOfSight())
            {
                path.Clear();
                if (InMeleeRange())
                {
                    if (Time.time > nextSwing)
                    {
                        nextSwing = Time.time + attackSpeed;
                        Attack();
                    }
                }
                else
                {
                    Vector3 moveDirection = target.transform.position - transform.position;
                    var newRot = Quaternion.LookRotation(moveDirection);
                    transform.rotation = Quaternion.Lerp(transform.rotation, newRot, 0.1f);
                    gameObject.GetComponent<CharacterController>().Move(moveDirection.normalized * currentSpeed * Time.deltaTime);
                    queuePath.Clear();
                }
            }
            else if (PathPossiable())
            {
                if (queuePath.Count == 0)
                    StartCoroutine(PathFinderChase());
            }
            else
            {
                path.Clear();
                queuePath.Clear();
                state = AIState.IDLE;
            }
        }
        else if (state == AIState.FLEE)
        {
            print("Fleeing");
        }

        else
        {
            state = AIState.IDLE;
        }
        if (queuePath.Count != 0)
        {
            Node currentNode = queuePath.Peek() as Node;
            Vector3 moveDirection = currentNode.transform.position - transform.position;
            var newRot = Quaternion.LookRotation(moveDirection);
            transform.rotation = Quaternion.Lerp(transform.rotation, newRot, 0.1f);
            gameObject.GetComponent<CharacterController>().Move(moveDirection.normalized * currentSpeed * Time.deltaTime);
            if (Vector3.Distance(this.transform.position, currentNode.GetPos()) <= 8f)
                queuePath.Dequeue();
        }
    }

    private bool InMeleeRange()
    {
        if (Vector3.Distance(this.transform.position, target.transform.position) <= 50f)
            return true;
        else return false;
    }

    private IEnumerator PathFinderChase()
    {
        endNode = aStar.GetComponent<Astar>().FindClosestNode(target);
        startNode = aStar.GetComponent<Astar>().FindClosestNode(this.gameObject);
        path = FindPathToTarget(endNode, startNode);
        yield return new WaitForSeconds(0.5f);
    }

    private IEnumerator PathFinderRoam()
    {
        path = FindNextClosest();
        yield return new WaitForSeconds(0.5f);
    }

    private List<Node> FindPathToTarget(Node endNde, Node startNode)
    {
        queuePath.Clear();
        if (endNode != null && startNode != null)
        {
            path = aStar.GetComponent<Astar>().GetPath(startNode, endNode);
        }
        AddListToQue();
        return path;
    }

    private List<Node> FindNextClosest()
    {
        startNode = aStar.GetComponent<Astar>().FindClosestNode(this.gameObject);
        endNode = startNode.RandomConnectedNode();
        return FindPathToTarget(endNode, startNode);
    }

    private bool PathPossiable()
    {
        return aStar.GetComponent<Astar>().PathPossiable;
    }

    private void AddListToQue()
    {
        queuePath.Clear();
        foreach (Node aNode in path)
            queuePath.Enqueue(aNode);

        //int defaultLayer = this.gameObject.layer;
        //this.gameObject.layer = LayerMask.NameToLayer("Ignore Raycast");
        //mask = 1 << 2;
        //mask = ~mask;
        //if (queuePath.Count > 1)
        //    for (int i = 0; i < queuePath.Count - 1; i++)
        //        if (!Physics.Linecast(transform.position, path[i + 1].transform.position, mask))
        //            queuePath.Dequeue();

        //this.gameObject.layer = defaultLayer;
    }

    private bool HasAggro()
    {
        if (HasLineOfSight() && willChase)
            return true;
        else return false;
    }

    private bool HasLineOfSight()
    {
        foreach (var player in GameObject.FindGameObjectWithTag("GameController").GetComponent<GameManager>().listOfPlayers)
        {
            RaycastHit rcHit;
            Vector3 centerOfEntity = new Vector3(transform.position.x, transform.position.y + 20f, transform.position.z);
            if (Physics.Raycast(centerOfEntity, player.transform.position - transform.position, out rcHit, Mathf.Infinity))
            {
                if (rcHit.transform.gameObject == player.transform.gameObject)
                {
                    target = player.transform.gameObject;
                    return true;
                }
            }
        }
        return false;
    }

    private void Attack()
    {
        target.GetComponent<PlayerStatsHandler>().TakeDamage(attackPower);
    }
}
