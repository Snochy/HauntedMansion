using UnityEngine;

public class MazeDoor : MazePassage
{
    public Transform hinge;

    private MazeDoor OtherSideOfDoor
    {
        get
        {
            return otherCell.GetEdge(direction.GetOpposite()) as MazeDoor;
        }
    }

    public override void Initialize(MazeCell primary, MazeCell other, MazeDirection direction, EdgeTypes edgeTypes)
    {
        base.Initialize(primary, other, direction, edgeType);
        if (OtherSideOfDoor != null)
            {
                if(hinge != null)
                Destroy(hinge.gameObject);
            }
        for (int i = 0; i < transform.childCount; i++)
        {
            Transform child = transform.GetChild(i);
            if (child != hinge)
            {
                child.GetComponent<Renderer>().material = cell.room.settings.wallMaterial;
            }
        }
    }
}