using UnityEngine;
using System.Collections;

public class PropController : MonoBehaviour
{
    private Material startcolor;
    public Material highLighted;
    public bool mouseOver;
    public bool isHighlightable;
    public bool canBePickedUp;
    public bool withinPickUpRange;

    public PropID propID;

    public float pickUpDistance = 120f;

    public string soundName;

    void Start()
    {
        startcolor = GetComponent<Renderer>().material;
    }

    void Update()
    {
            if (GameObject.FindGameObjectWithTag("Player") != null && Camera.main != null)
            {
                if (isHighlightable)
                {
                    if (Vector3.Distance(this.transform.position, GameObject.FindGameObjectWithTag("Player").transform.position) <= pickUpDistance)
                        withinPickUpRange = true;
                    else withinPickUpRange = false;

                    RaycastHit[] allHit = Physics.RaycastAll(Camera.main.ScreenPointToRay(Input.mousePosition));
                    foreach (RaycastHit hit in allHit)
                    {
                        if (hit.collider.gameObject == this.gameObject)
                        {
                            startcolor = GetComponent<Renderer>().material;
                            GetComponent<Renderer>().material = highLighted;
                            mouseOver = true;
                        }
                        else
                        {
                            GetComponent<Renderer>().material = startcolor;
                            mouseOver = false;
                        }
                    }

                    if (Input.GetMouseButtonDown(0) && mouseOver && canBePickedUp)
                        if (withinPickUpRange)
                        {
                            GameObject.FindGameObjectWithTag("SoundEffect").GetComponent<SoundPlayer>().PlayAudio(SoundID.PickUp);
                            GameObject.FindGameObjectWithTag("GameController").GetComponent<GlobalHauntControllor>().DestroyedObject(this.gameObject);
                            Destroy(this.gameObject);
                        }
            }
        }
    }
}
