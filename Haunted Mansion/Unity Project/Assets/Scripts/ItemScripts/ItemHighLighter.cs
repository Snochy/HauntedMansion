using UnityEngine;
using System.Collections;

public class ItemHighLighter : MonoBehaviour
{
    private Material startcolor;
    public Material highLighted;
    public bool mouseOver;

    public string soundName;

    void OnMouseEnter()
    {
        startcolor = GetComponent<Renderer>().material;
        GetComponent<Renderer>().material = highLighted;
        mouseOver = true;
    }
    void OnMouseExit()
    {
        GetComponent<Renderer>().material = startcolor;
        mouseOver = false;
    }

    void Update()
    {
        if (Input.GetMouseButton(0) && mouseOver)
            if (Vector3.Distance(this.transform.position, GameObject.FindGameObjectWithTag("Player").transform.position) <= 80f)
            {
                GameObject.Find("SoundHandler").GetComponent<SoundPlayer>().PlayAudio(soundName);
                Destroy(this.gameObject);
            }
    }
}
