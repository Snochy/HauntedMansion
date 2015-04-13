using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class RandomRoomSound : MonoBehaviour
{
    public AudioSource[] audio;
    public int SoundIndex;
    public bool hasSound;

    public float delayTime;

    public float currentTime;

    void Start()
    {
        if (Random.Range(0F, 1F) <= .25f)
        {
            SoundIndex = Random.Range(0, audio.Length);
            hasSound = true;
        }

        if (!hasSound)
            Destroy(this.transform.gameObject);
    }

    void Update()
    {
        if(hasSound)
            if (currentTime <= 0)
            {
                currentTime = delayTime;
                PlayAudio();
            }
        currentTime -= Time.deltaTime;

    }

    public void PlayAudio()
    {
        audio[SoundIndex].Play();
    }
}
