using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class InputRooms : MonoBehaviour
{
    public GameObject entranceHall;

    public void ReplaceRooms()
    {
        MazeCell[,] cells = new MazeCell[transform.GetComponent<GameManager>().GetMaze().size.x, transform.GetComponent<GameManager>().GetMaze().size.z];
        cells = transform.GetComponent<GameManager>().GetMaze().GetMazeCells();

        float sizeX = transform.GetComponent<GameManager>().GetMaze().size.x /2f ;
        float sizeZ = transform.GetComponent<GameManager>().GetMaze().size.z /2f ;

        float temp = Mathf.Floor(sizeZ - 1);
        float coordZ = temp - sizeZ;

        temp = Mathf.Floor(sizeX - 1f);
        float coordX = temp - sizeX;

        temp = Mathf.Floor(sizeX);
        coordX = (temp - sizeX + coordX)/2;

        GameObject mainHall = Instantiate(entranceHall) as GameObject;
        mainHall.name = "EntranceHall 0 , 0";
        mainHall.transform.localPosition = new Vector3(coordX * 600, 0, coordZ * 600f);
        mainHall.transform.parent = cells[0,0].transform.parent;
        mainHall.GetComponent<Renderer>().material = GameObject.Find("Maze(Clone)").GetComponent<Maze>().entranceHall.settings.floorMaterial;

        foreach (MazeCell mazeCell in cells)
        {
            if (mazeCell.roomType == RoomType.EntranceHall)
            {
                Destroy(mazeCell.transform.FindChild("MazeCeiling(Clone)").gameObject);
            }
        }

        cells = new MazeCell[transform.GetComponent<GameManager>().GetMaze().size.x, transform.GetComponent<GameManager>().GetMaze().size.z];
        cells = transform.GetComponent<GameManager>().GetMaze().GetMazeCellsUpper();

        foreach (MazeCell mazeCell in cells)
        {
            if (mazeCell.roomType == RoomType.EntranceHall)
                Destroy(mazeCell.transform.FindChild("Floor").gameObject);
        }

    }
}
