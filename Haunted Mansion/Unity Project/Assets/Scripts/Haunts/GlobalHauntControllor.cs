using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class GlobalHauntControllor : MonoBehaviour {

    public PropID LastItemDestoryed;
    public List<PropID> ListOfDestroyedGameobjects;

    public GameObject Nightmare;

    public void DestroyedObject(GameObject goDestroyed)
    {
        LastItemDestoryed = goDestroyed.GetComponent<PropController>().propID;
        ListOfDestroyedGameobjects.Add(LastItemDestoryed);
    }

    public void SetNightmare(GameObject goNightmare)
    {
        Nightmare = goNightmare;
    }
}
