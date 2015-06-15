using UnityEngine;
using System.Collections;

public class EntityType
{

	public EntityID Id;
    public int IDNumber;
	public string Name;
	public string Description;
	public double Sanity = 0;
	public double Health = 0;
	public float Speed = 0;
    public float roamSpeed = 0;
    public GameObject Prefab = Resources.Load("Entities/ghost") as GameObject;
    public bool willChase = false;
    public bool willRoam = false;
    public float chaseDistance = 0;

	public override string ToString()
	{
		return Name;
	}
}