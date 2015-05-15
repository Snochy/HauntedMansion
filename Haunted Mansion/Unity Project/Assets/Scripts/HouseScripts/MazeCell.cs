using UnityEngine;
using System.Collections;

public class MazeCell : MonoBehaviour {

	//Just a simple vector 2 int for coords for the cell
    public IntVector3 coordinates;

	//a list of edges that are current set up for the room
    private MazeCellEdge[] edges = new MazeCellEdge[MazeDirections.Count];

	//The amount of edges currently have been initialized
    public int initializedEdgeCount;

    public MazeDirection cellFacing;
    public RoomType roomType;

    public MazeRoom room;

    public int roomIndex;

    public void Initialize(MazeRoom room)
    {
        room.Add(this);
        transform.FindChild("Floor").GetComponent<Renderer>().material = room.settings.floorMaterial;
    }

    public MazeCellEdge GetEdge(MazeDirection direction)
    {
        return edges[(int)direction];
    }

	//See if current Initialized count equals the number of sides
    public bool IsFullyInitialized
    {
        get
        {
            return initializedEdgeCount == MazeDirections.Count;
        }
    }

	//Add edge to edges array for the cell
	//Count that +1 edge as been initialized
    public void SetEdge(MazeDirection direction, MazeCellEdge edge)
    {
        edges[(int)direction] = edge;
        initializedEdgeCount += 1;
    }

	//Randomizes a direction based on what has not be used
    public MazeDirection RandomUninitializedDirection
    {
        get
        {
            int skips = Random.Range(0, MazeDirections.Count - initializedEdgeCount);
            for (int i = 0; i < MazeDirections.Count; i++)
            {
                if (edges[i] == null)
                {
                    if (skips == 0)
                    {
                        return (MazeDirection)i;
                    }
                    skips -= 1;
                }
            }
            throw new System.InvalidOperationException("MazeCell has no uninitialized directions left.");
        }
    }
}
