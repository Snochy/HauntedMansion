using UnityEngine;
using System.Collections.Generic;

public class MazeCeiling : MonoBehaviour
{

    public MazeCell cell;

    public void Initialize(MazeCell cell)
    {
        //save variables from intaked into variables for class
        this.cell = cell;
        //make edge a child of mazecell
        transform.parent = cell.transform;
        //center it in the parent
        transform.localPosition = Vector3.zero;
    }

}