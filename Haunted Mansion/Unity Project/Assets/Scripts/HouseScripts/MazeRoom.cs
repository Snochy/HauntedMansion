using UnityEngine;
using System.Collections.Generic;

public class MazeRoom : ScriptableObject
{
    public int roomNumb;
    private List<MazeCell> cells = new List<MazeCell>();

    public void Add(MazeCell cell)
    {
        cell.room = this;
        cells.Add(cell);
    }

}