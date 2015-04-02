using UnityEngine;
using System.Collections;

public abstract class MazeCellEdge : MonoBehaviour
{

    public MazeCell cell, otherCell;

    public MazeDirection direction;

    public bool EdgePlaced = false;

    public EdgeTypes edgeType;

	//Initilaize cell edge
    public void Initialize(MazeCell cell, MazeCell otherCell, MazeDirection direction, EdgeTypes edgeType)
    {
		//save variables from intaked into variables for class
        this.cell = cell;
        this.otherCell = otherCell;
        this.direction = direction;
        this.edgeType = edgeType;
		//Make which direction the edge is facing
        cell.SetEdge(direction, this);
		//make edge a child of mazecell
        transform.parent = cell.transform;
		//center it in the parent
        transform.localPosition = Vector3.zero;
		//rotate to face edge is is at
        transform.localRotation = direction.ToRotation();
        EdgePlaced = true;
    }

    public void Initialize(MazeCell cell, MazeDirection direction, EdgeTypes edgeType)
    {
        //save variables from intaked into variables for class
        this.cell = cell;
        this.direction = direction;
        this.edgeType = edgeType;
        //Make which direction the edge is facing
        cell.SetEdge(direction, this);
        //make edge a child of mazecell
        transform.parent = cell.transform;
        //center it in the parent
        transform.localPosition = Vector3.zero;
        //rotate to face edge is is at
        transform.localRotation = direction.ToRotation();
        EdgePlaced = true;
    }
}