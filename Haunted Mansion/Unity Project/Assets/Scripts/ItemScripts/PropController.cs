using UnityEngine;
using System.Collections;

public class PropController : MonoBehaviour
{
    private Material startcolor;
    public Material highLighted;
    private bool mouseOver;
    public bool interactable;
    public bool canBePickedUp;
    public bool withinInteractionRange;

    public PropID propID;

    public float interactionDistance = 120f;

    public string soundName;

    public Material postInteractionMaterial;

    void Start()
    {
        startcolor = GetComponent<Renderer>().material;
    }

    void Update()
    {
            if (GameObject.FindGameObjectWithTag("Player") != null && Camera.main != null)
            {
                if (interactable)
                {
                    if (Vector3.Distance(this.transform.position, GameObject.FindGameObjectWithTag("Player").transform.position) <= interactionDistance)
                        withinInteractionRange = true;
                    else withinInteractionRange = false;

                    RaycastHit[] allHit = Physics.RaycastAll(Camera.main.ScreenPointToRay(Input.mousePosition));
                    foreach (RaycastHit hit in allHit)
                    {
                        if (highLighted != null)
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
                    }

                    if (Input.GetMouseButtonDown(0) && mouseOver && interactable)
                        if (withinInteractionRange)
                        {
                            if (canBePickedUp)
                            {
                                GameObject.FindGameObjectWithTag("SoundEffect").GetComponent<SoundPlayer>().PlayAudio(SoundID.PickUp);
                                GameObject.FindGameObjectWithTag("GameController").GetComponent<GlobalHauntControllor>().DestroyedObject(this.gameObject);
                                Destroy(this.gameObject);
                            }
                            else
                            {
                                GameObject.FindGameObjectWithTag("SoundEffect").GetComponent<SoundPlayer>().PlayAudio(SoundID.PickUp);
                                GameObject.FindGameObjectWithTag("GameController").GetComponent<GlobalHauntControllor>().DestroyedObject(this.gameObject);
                                if(postInteractionMaterial != null)
                                    GetComponent<Renderer>().material = postInteractionMaterial;
                                interactable = false;
                            }
                        }
            }
        }
    }
}
