using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class GlobalHauntControllor : MonoBehaviour {

    public PropID LastItemDestoryed;
    public List<PropID> ListOfDestroyedGameobjects;

    public GameObject Nightmare;

    public List<GameObject> listOfDeadPlayers;

	void Start()
	{
		PlayerStatsHandler.PlayerDeath += PlayerDeath;
	}

    public void DestroyedObject(GameObject goDestroyed)
    {
        LastItemDestoryed = goDestroyed.GetComponent<PropController>().propID;
        ListOfDestroyedGameobjects.Add(LastItemDestoryed);
    }

    public void SetNightmare(GameObject goNightmare)
    {
        Nightmare = goNightmare;
    }

    public void PlayerDeath(GameObject player)
    {
        listOfDeadPlayers.Add(player);
    }
}
