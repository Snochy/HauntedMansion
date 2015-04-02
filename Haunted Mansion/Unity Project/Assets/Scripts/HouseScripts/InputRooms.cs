using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class InputRooms : MonoBehaviour
{
    public GameObject singleRoom;
    public GameObject doubleCrossRoom;
    public GameObject doubleCornerRoom;
    public GameObject triRoom;
    public GameObject quadRoom;
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

        foreach (MazeCell mazeCell in cells)
        {
             if (mazeCell.roomType == RoomType.EntranceHall)
                 Destroy(mazeCell.gameObject);
        }

        foreach(MazeCell mazeCell in cells)
            if (mazeCell.roomType == RoomType.Single)
            {
                GameObject newRoom = Instantiate(singleRoom) as GameObject;
                newRoom.name = "Single Room " + mazeCell.coordinates.x + ", " + mazeCell.coordinates.z;
                newRoom.transform.parent = mazeCell.transform.parent;
                newRoom.transform.localPosition =
                        new Vector3((mazeCell.coordinates.x - transform.GetComponent<GameManager>().GetMaze().size.x * 0.5f) * 600, 0f, (mazeCell.coordinates.z - transform.GetComponent<GameManager>().GetMaze().size.z * 0.5f) * 600);
                newRoom.transform.localRotation = mazeCell.cellFacing.ToRotation();
                Destroy(mazeCell.gameObject);
            }

        foreach (MazeCell mazeCell in cells)
            if (mazeCell.roomType == RoomType.ThreeWay)
            {
                GameObject newRoom = Instantiate(triRoom) as GameObject;
                newRoom.name = "Threeway Room " + mazeCell.coordinates.x + ", " + mazeCell.coordinates.z;
                newRoom.transform.parent = mazeCell.transform.parent;
                newRoom.transform.localPosition =
                        new Vector3((mazeCell.coordinates.x - transform.GetComponent<GameManager>().GetMaze().size.x * 0.5f) * 600, 0f, (mazeCell.coordinates.z - transform.GetComponent<GameManager>().GetMaze().size.z * 0.5f) * 600);
                newRoom.transform.localRotation = mazeCell.cellFacing.ToRotation();
                Destroy(mazeCell.gameObject);
            }

        foreach (MazeCell mazeCell in cells)
            if (mazeCell.roomType == RoomType.FourWay)
            {
                GameObject newRoom = Instantiate(quadRoom) as GameObject;
                newRoom.name = "Fourway Room " + mazeCell.coordinates.x + ", " + mazeCell.coordinates.z;
                newRoom.transform.parent = mazeCell.transform.parent;
                newRoom.transform.localPosition =
                        new Vector3((mazeCell.coordinates.x - transform.GetComponent<GameManager>().GetMaze().size.x * 0.5f) * 600, 0f, (mazeCell.coordinates.z - transform.GetComponent<GameManager>().GetMaze().size.z * 0.5f) * 600);
                newRoom.transform.localRotation = mazeCell.cellFacing.ToRotation();
                Destroy(mazeCell.gameObject);
            }

        foreach (MazeCell mazeCell in cells)
            if (mazeCell.roomType == RoomType.Corner)
            {
                GameObject newRoom = Instantiate(doubleCornerRoom) as GameObject;
                newRoom.name = "Corner Room " + mazeCell.coordinates.x + ", " + mazeCell.coordinates.z;
                newRoom.transform.parent = mazeCell.transform.parent;
                newRoom.transform.localPosition =
                        new Vector3((mazeCell.coordinates.x - transform.GetComponent<GameManager>().GetMaze().size.x * 0.5f) * 600, 0f, (mazeCell.coordinates.z - transform.GetComponent<GameManager>().GetMaze().size.z * 0.5f) * 600);
                newRoom.transform.localRotation = mazeCell.cellFacing.ToRotation();
                Destroy(mazeCell.gameObject);
            }

        foreach (MazeCell mazeCell in cells)
            if (mazeCell.roomType == RoomType.Cross)
            {
                GameObject newRoom = Instantiate(doubleCrossRoom) as GameObject;
                newRoom.name = "Cross Room " + mazeCell.coordinates.x + ", " + mazeCell.coordinates.z;
                newRoom.transform.parent = mazeCell.transform.parent;
                newRoom.transform.localPosition =
                        new Vector3((mazeCell.coordinates.x - transform.GetComponent<GameManager>().GetMaze().size.x * 0.5f) * 600, 0f, (mazeCell.coordinates.z - transform.GetComponent<GameManager>().GetMaze().size.z * 0.5f) * 600);
                newRoom.transform.localRotation = mazeCell.cellFacing.ToRotation();
                Destroy(mazeCell.gameObject);
            }
    }

    public void ReplaceRoomsUpper()
    {
        MazeCell[,] cells = new MazeCell[transform.GetComponent<GameManager>().GetMaze().size.x, transform.GetComponent<GameManager>().GetMaze().size.z];
        cells = transform.GetComponent<GameManager>().GetMaze().GetMazeCellsUpper();
        
        foreach (MazeCell mazeCell in cells)
        {
            if (mazeCell.roomType == RoomType.EntranceHall)
                Destroy(mazeCell.gameObject);
        }

        foreach (MazeCell mazeCell in cells)
            if (mazeCell.roomType == RoomType.Single)
            {
                GameObject newRoom = Instantiate(singleRoom) as GameObject;
                newRoom.name = "Single Room " + mazeCell.coordinates.x + ", " + mazeCell.coordinates.z;
                newRoom.transform.parent = mazeCell.transform.parent;
                newRoom.transform.localPosition =
                        new Vector3((mazeCell.coordinates.x - transform.GetComponent<GameManager>().GetMaze().size.x * 0.5f) * 600, 337.4f, (mazeCell.coordinates.z - transform.GetComponent<GameManager>().GetMaze().size.z * 0.5f) * 600);
                newRoom.transform.localRotation = mazeCell.cellFacing.ToRotation();
                Destroy(mazeCell.gameObject);
            }

        foreach (MazeCell mazeCell in cells)
            if (mazeCell.roomType == RoomType.ThreeWay)
            {
                GameObject newRoom = Instantiate(triRoom) as GameObject;
                newRoom.name = "Threeway Room " + mazeCell.coordinates.x + ", " + mazeCell.coordinates.z;
                newRoom.transform.parent = mazeCell.transform.parent;
                newRoom.transform.localPosition =
                        new Vector3((mazeCell.coordinates.x - transform.GetComponent<GameManager>().GetMaze().size.x * 0.5f) * 600, 337.4f, (mazeCell.coordinates.z - transform.GetComponent<GameManager>().GetMaze().size.z * 0.5f) * 600);
                newRoom.transform.localRotation = mazeCell.cellFacing.ToRotation();
                Destroy(mazeCell.gameObject);
            }

        foreach (MazeCell mazeCell in cells)
            if (mazeCell.roomType == RoomType.FourWay)
            {
                GameObject newRoom = Instantiate(quadRoom) as GameObject;
                newRoom.name = "Fourway Room " + mazeCell.coordinates.x + ", " + mazeCell.coordinates.z;
                newRoom.transform.parent = mazeCell.transform.parent;
                newRoom.transform.localPosition =
                        new Vector3((mazeCell.coordinates.x - transform.GetComponent<GameManager>().GetMaze().size.x * 0.5f) * 600, 337.4f, (mazeCell.coordinates.z - transform.GetComponent<GameManager>().GetMaze().size.z * 0.5f) * 600);
                newRoom.transform.localRotation = mazeCell.cellFacing.ToRotation();
                Destroy(mazeCell.gameObject);
            }

        foreach (MazeCell mazeCell in cells)
            if (mazeCell.roomType == RoomType.Corner)
            {
                GameObject newRoom = Instantiate(doubleCornerRoom) as GameObject;
                newRoom.name = "Corner Room " + mazeCell.coordinates.x + ", " + mazeCell.coordinates.z;
                newRoom.transform.parent = mazeCell.transform.parent;
                newRoom.transform.localPosition =
                        new Vector3((mazeCell.coordinates.x - transform.GetComponent<GameManager>().GetMaze().size.x * 0.5f) * 600, 337.4f, (mazeCell.coordinates.z - transform.GetComponent<GameManager>().GetMaze().size.z * 0.5f) * 600);
                newRoom.transform.localRotation = mazeCell.cellFacing.ToRotation();
                Destroy(mazeCell.gameObject);
            }

        foreach (MazeCell mazeCell in cells)
            if (mazeCell.roomType == RoomType.Cross)
            {
                GameObject newRoom = Instantiate(doubleCrossRoom) as GameObject;
                newRoom.name = "Cross Room " + mazeCell.coordinates.x + ", " + mazeCell.coordinates.z;
                newRoom.transform.parent = mazeCell.transform.parent;
                newRoom.transform.localPosition =
                        new Vector3((mazeCell.coordinates.x - transform.GetComponent<GameManager>().GetMaze().size.x * 0.5f) * 600, 337.4f, (mazeCell.coordinates.z - transform.GetComponent<GameManager>().GetMaze().size.z * 0.5f) * 600);
                newRoom.transform.localRotation = mazeCell.cellFacing.ToRotation();
                Destroy(mazeCell.gameObject);
            }
    }
}
