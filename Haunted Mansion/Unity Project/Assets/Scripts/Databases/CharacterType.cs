using UnityEngine;
using System.Collections;

public class CharacterType {

	public CharacterID Id;
    public int IDNumber;
	public string Name;
	public string Description;
	public double Sanity = 0;
	public double Health = 0;
	public double Speed = 0;
	public bool ShowToolTip = true;
    public GameObject Prefab = Resources.Load("Characters/[PH]MaleOld") as GameObject;
    public Sprite Profile = Resources.Load<Sprite>("CharacterAvatars/NoPlayerImage");
	public GameObject CharSelPrefab = Resources.Load("Characters/[PH]MaleCharSel") as GameObject;

	public override string ToString()
	{
		return Name;
	}
}