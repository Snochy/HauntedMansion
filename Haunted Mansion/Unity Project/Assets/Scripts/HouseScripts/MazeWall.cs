using UnityEngine;

public class MazeWall : MazeCellEdge 
{
    public Transform wall;

    public bool SpawnedProp = false;

    public override void Initialize(MazeCell cell, MazeCell otherCell, MazeDirection direction, EdgeTypes edgeType)
    {
        base.Initialize(cell, otherCell, direction, edgeType);
        Material[] mats = new Material[] { wall.GetComponent<Renderer>().materials[0], cell.room.settings.wallMaterial };
        wall.GetComponent<Renderer>().materials = mats;
    }

    public override void Initialize(MazeCell cell, MazeDirection direction, EdgeTypes edgeType)
    {
        base.Initialize(cell, otherCell, direction, edgeType);
        Material[] mats = new Material[] { wall.GetComponent<Renderer>().materials[0], cell.room.settings.wallMaterial };
        wall.GetComponent<Renderer>().materials = mats;
    }
}
