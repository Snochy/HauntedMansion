using UnityEngine;
using System.Collections;

[System.Serializable]
public struct IntVector3
{
    public int x, y, z;

    public IntVector3(int x, int y, int z)
    {
        this.x = x;
        this.z = z;
        this.y = y;
    }

    public static IntVector3 operator +(IntVector3 a, IntVector3 b)
    {
        a.x += b.x;
        a.z += b.z;
        return a;
    }
}
