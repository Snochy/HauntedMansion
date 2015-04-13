using UnityEngine;
using System.Collections;

public class RoomDataBase : MonoBehaviour
{
    public GameObject[,] groundCells;
    public GameObject[,] upperCells;
    public GameObject[,] basementCells;

    public IntVector3 demis;

    public void SetDemi(int x, int z)
    {
        groundCells = new GameObject[x, z];
        upperCells = new GameObject[x, z];
        basementCells = new GameObject[x, z];
        demis.x = x;
        demis.z = z;
    }

    public void AddGroundCell(GameObject gameobject, int x, int z)
    {
        groundCells[x, z] = gameobject;
        gameobject.GetComponent<RoomControllor>().coords.x = x;
        gameobject.GetComponent<RoomControllor>().coords.z = z;
        gameobject.GetComponent<RoomControllor>().coords.y = 0;
    }
    public void AddUpperCell(GameObject gameobject, int x, int z)
    {
        upperCells[x, z] = gameobject;
        gameobject.GetComponent<RoomControllor>().coords.x = x;
        gameobject.GetComponent<RoomControllor>().coords.z = z;
        gameobject.GetComponent<RoomControllor>().coords.y = 1;
    }
    public void AddBasementCell(GameObject gameobject, int x, int z)
    {
        basementCells[x, z] = gameobject;
        gameobject.GetComponent<RoomControllor>().coords.x = x;
        gameobject.GetComponent<RoomControllor>().coords.z = z;
        gameobject.GetComponent<RoomControllor>().coords.y = -1;
    }
}
