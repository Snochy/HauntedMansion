using UnityEngine;
using System;

[Serializable]
public class MazeRoomSettings
{
    public Material floorMaterial = Resources.Load("Materials/lambert1") as Material;
    public Material wallMaterial = Resources.Load("Materials/lambert1") as Material;

    public MazeRoomSettings(Material a, Material b)
    {
        floorMaterial = a;
        wallMaterial = b;
    }

}