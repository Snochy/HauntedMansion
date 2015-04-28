using UnityEngine;

public class MazeWall : MazeCellEdge 
{
    public Transform wall;

    public override void Initialize(MazeCell cell, MazeCell otherCell, MazeDirection direction, EdgeTypes edgeType)
    {
        base.Initialize(cell, otherCell, direction, edgeType);
        wall.GetComponent<Renderer>().material = cell.room.settings.wallMaterial;
    }

    public override void Initialize(MazeCell cell, MazeDirection direction, EdgeTypes edgeType)
    {
        base.Initialize(cell, otherCell, direction, edgeType);
        wall.GetComponent<Renderer>().material = cell.room.settings.wallMaterial;
    }
}
