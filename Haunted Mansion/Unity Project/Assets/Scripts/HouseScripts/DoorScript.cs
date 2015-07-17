using UnityEngine;
using System.Collections;

public class DoorScript : MonoBehaviour {

    public Transform hinge;

    public bool mouseOver;

    public float openAngle = 90f;
    public float closeAngle = 0;

    public float smooth = 1;

    public bool open, enter, canBeOpenned;
    public float interactionDistance = 200f;

    public MazeCellEdge mazeCellEdge;

    void Start()
    {
        mazeCellEdge = transform.parent.parent.parent.GetComponent<MazeCellEdge>();
    }

	void Update () 
    {

        RaycastHit[] allHit;
        if (Camera.main != null)
        {
            if (Vector3.Distance(this.transform.position, GameObject.FindGameObjectWithTag("Player").transform.position) <= interactionDistance)
                canBeOpenned = true;
            else canBeOpenned = false;

            allHit = Physics.RaycastAll(Camera.main.ScreenPointToRay(Input.mousePosition));
            foreach (RaycastHit hit in allHit)
            {
                if (hit.collider.gameObject == this.gameObject)
                {
                    mouseOver = true;
                    break;
                }
                else mouseOver = false;
            }
        }

        if (Input.GetMouseButtonDown(0) && mouseOver)
        {
            if (canBeOpenned)
            {
                open = !open;
                if (Vector3.Dot(this.transform.TransformDirection(Vector3.right), this.transform.position - GameObject.FindGameObjectWithTag("Player").transform.position) < 0)
                    openAngle = -90;
                else openAngle = 90;
            }
            else canBeOpenned = false;
            
            if(canBeOpenned)
            {
                if (open)
                {
                    GameObject.FindWithTag("SoundEffect").GetComponent<SoundPlayer>().PlayAudio(SoundID.DoorOpen);
                    MakeConnection();
                }
                if (!open)
                {
                    BreakConnection();
                    GameObject.FindWithTag("SoundEffect").GetComponent<SoundPlayer>().PlayAudio(SoundID.DoorClose);
                }
            }
        }

        if (open == true)
        {
            var target = Quaternion.Euler(0, openAngle, 0);
            // Dampen towards the target rotation
            hinge.localRotation = Quaternion.Slerp(hinge.localRotation, target,
            Time.deltaTime * smooth);
        }

        if (open == false)
        {
            var target1 = Quaternion.Euler(0, closeAngle, 0);
            // Dampen towards the target rotation
            hinge.localRotation = Quaternion.Slerp(hinge.localRotation, target1,
         Time.deltaTime * smooth);
        }
            
	}

    private void BreakConnection()
    {
        mazeCellEdge.transform.FindChild("Nodes").FindChild("DoorNode").GetComponent<Node>().RemoveConnectedNode(mazeCellEdge.otherCell.edges[(int)mazeCellEdge.direction.GetOpposite()].transform.FindChild("Nodes").FindChild("DoorNode").GetComponent<Node>());
        mazeCellEdge.otherCell.edges[(int)mazeCellEdge.direction.GetOpposite()].transform.FindChild("Nodes").FindChild("DoorNode").GetComponent<Node>().RemoveConnectedNode(mazeCellEdge.transform.FindChild("Nodes").FindChild("DoorNode").GetComponent<Node>());
    }

    private void MakeConnection()
    {
        mazeCellEdge.transform.FindChild("Nodes").FindChild("DoorNode").GetComponent<Node>().AddConnectedNode(mazeCellEdge.otherCell.edges[(int)mazeCellEdge.direction.GetOpposite()].transform.FindChild("Nodes").FindChild("DoorNode").GetComponent<Node>());
        mazeCellEdge.otherCell.edges[(int)mazeCellEdge.direction.GetOpposite()].transform.FindChild("Nodes").FindChild("DoorNode").GetComponent<Node>().AddConnectedNode(mazeCellEdge.transform.FindChild("Nodes").FindChild("DoorNode").GetComponent<Node>());
    }
}
