using UnityEngine;
using System.Collections;

public class makeTransparent : MonoBehaviour {

    public Material transparent, current;
    public GameObject colliderObject;

    public bool fading;

	void Update () 
    {
        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        RaycastHit hit;
        if(Physics.Raycast(ray, out hit, 1000))
            if (hit.collider.gameObject == colliderObject)
            {
                GetComponent<Renderer>().material = transparent;
                fading = true;
            }
            else
            {
                GetComponent<Renderer>().material = current;
                fading = false;
            }

            if (fading)
            {
                float alpha = Mathf.Lerp(current.color.a, transparent.color.a, Time.deltaTime);
                Color color = GetComponent<Renderer>().material.color;
                color.a = 1 - alpha;
                GetComponent<Renderer>().material.color = color;
            }

            if (!fading)
            {
                float alpha = Mathf.Lerp(transparent.color.a, current.color.a, Time.deltaTime * 5f);
                Color color = GetComponent<Renderer>().material.color;
                color.a = 1- alpha;
                GetComponent<Renderer>().material.color = color;
            }
        }
	
	}
