using UnityEngine;
using System.Collections;

public class SoundPlayer : MonoBehaviour {

	public AudioSource step;
	public AudioSource music;

	public AudioSource click;
    public AudioSource book;
    
    public AudioSource pickUp;
	
	public void PlayAudio(string a)
	{
		if(a == "step" && !step.isPlaying)
			step.Play();
		if(a == "stopStep")
			step.Stop();
		if(a == "click")
			click.Play ();
        if (a == "book")
            book.Play();
        if(a == "pickUp")
        	pickUp.Play ();
        
	}
}
