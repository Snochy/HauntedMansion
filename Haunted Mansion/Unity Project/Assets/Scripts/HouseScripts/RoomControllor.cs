using UnityEngine;
using System.Collections;

public class RoomControllor : MonoBehaviour
{
    public IntVector3 coords;
    
    private GameObject lightControllor;
    
    void Start()
    {
		if(transform.Find("RoomCenter"))
    	{
    		lightControllor = transform.Find("RoomCenter").gameObject;
    		lightControllor.GetComponent<Light>().intensity = .25f;
    	}
    	
    }

    public void SetCoords(int x, int z)
    {
        coords.x = x;
        coords.z = z;
    }

}
