using UnityEngine;
using System.Collections;

public class makeTransparent : MonoBehaviour {

    public Material current;
    public Material transparent;
    public GameObject collider;

    public bool fading;

	void Update () 
    {
        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        RaycastHit hit;
        if(Physics.Raycast(ray, out hit, 1000))
            if (hit.collider.gameObject == collider)
            {
                fading = true;
            }
            else
            {
                fading = false;
            }

            if (fading)
            {
                GetComponent<Renderer>().material.color = Color.Lerp(GetComponent<Renderer>().material.color, transparent.color, Time.deltaTime);
            }

            if (!fading)
            {
                GetComponent<Renderer>().material.color = Color.Lerp(GetComponent<Renderer>().material.color, current.color, Time.deltaTime * 5f);
            }
        }
	
	}
