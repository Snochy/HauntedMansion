using UnityEngine;
using System.Collections;

public class ItemHighLighter : MonoBehaviour
{
    private Material startcolor;
    public Material highLighted;
    public bool mouseOver;

    public string soundName;

    void Start()
    {
        startcolor = GetComponent<Renderer>().material;
    }

    void Update()
    {

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

        if (Input.GetMouseButtonDown(0) && mouseOver)
            if (Vector3.Distance(this.transform.position, GameObject.FindGameObjectWithTag("Player").transform.position) <= 120f)
            {
                GameObject.Find("SoundHandler").GetComponent<SoundPlayer>().PlayAudio(soundName);
                Destroy(this.gameObject);
            }
    }
}
