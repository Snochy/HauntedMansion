using UnityEngine;
using System.Collections;

public class RoomControllor : MonoBehaviour
{
    public IntVector3 coords;

    public void SetCoords(int x, int z)
    {
        coords.x = x;
        coords.z = z;
    }

}
