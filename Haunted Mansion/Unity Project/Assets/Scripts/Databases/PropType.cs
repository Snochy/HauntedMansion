using UnityEngine;
using System.Collections;

public class PropType
{
    public PropID Id;
    public int IDNumber;
    public string Name;
    public GameObject Prefab;
    public bool isSpawnable = false;
    public bool isWallDecor = false;
    public bool isFloorDecor = false;
    public bool isNotBasement = false;
    public float probability = 1f;
    public float interactionDistance = 0f;
    public bool canBePickedUp = false;
    public bool interactable;
}