using UnityEngine;
using System.Collections;

public class SoundPlayer : MonoBehaviour {

	public AudioSource step;
	public AudioSource music;

	public AudioSource click;
    public AudioSource book;
    
    public AudioSource pickUp;
    public AudioSource doorOpen;
    public AudioSource doorClose;

    public bool isEnabled = true;

    void Start()
    {
        isEnabled = true;
    }
	public void PlayAudio(string a)
	{
        if (isEnabled)
        {
            if (a == "step" && !step.isPlaying)
                step.Play();
            if (a == "stopStep")
                step.Stop();
            if (a == "click")
                click.Play();
            if (a == "book")
                book.Play();
            if (a == "pickUp")
                pickUp.Play();
            if (a == "doorOpen")
                doorOpen.Play();
            if (a == "doorClose")
                doorClose.Play();
        }
        
	}
}
