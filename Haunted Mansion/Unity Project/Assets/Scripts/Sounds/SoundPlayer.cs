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

	public void PlayAudio(SoundID a)
	{
        if (isEnabled)
        {
            if (a == SoundID.Step)
                step.Play();
            if (a == SoundID.Click)
                click.Play();
            if (a == SoundID.Book)
                book.Play();
            if (a == SoundID.PickUp)
                pickUp.Play();
            if (a == SoundID.DoorOpen)
                doorOpen.Play();
            if (a == SoundID.DoorClose)
                doorClose.Play();
        }
        
	}
}
