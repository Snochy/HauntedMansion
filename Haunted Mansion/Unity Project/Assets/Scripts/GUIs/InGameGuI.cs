using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class InGameGuI : MonoBehaviour {

	public GUIStyle menuStyle;
	public GUIStyle HUDStyle;

	public float fadeSpeed = 2f;

	public bool menuOpen = false;

	public bool musicTog = true, SFXTog = true;

	public bool controls = true;

	private bool isFading = false;

    public bool isHouseReady = false;
    
    public bool areYouSure = false;

	public Color guiColor = Color.clear;

    public GameObject loadingScreen;
    public GameObject optionMenu;
    public GameObject sureMenu;

    public Button endGame;
    public Button start;
    public Button sound;
    public Button music;
    public Button apply;
    public Button cancel;
    public Button endGameYes;
    public Button endGameCancel;

    public Image musicCross, soundCross;

    public GameObject gameHandler;

    public Image fader;


    void Start()
    {
        fader.color = Color.black;
        endGame.onClick.AddListener(() => { EndGameButtonClick(); });
        start.onClick.AddListener(() => { StartButtonClick(); });
        sound.onClick.AddListener(() => { SoundButtonClick(); });
        music.onClick.AddListener(() => { MusicButtonClick(); });
        cancel.onClick.AddListener(() => { CancelButtonClick(); });
        apply.onClick.AddListener(() => { ApplyButtonClick(); });
        endGameCancel.onClick.AddListener(() => { EndGameCancelButtonClick(); });
        endGameYes.onClick.AddListener(() => { EndGameYesButtonClick(); });

    }

	void OnGUI () {

		if(controls)
		{
            loadingScreen.SetActive(true);
            optionMenu.SetActive(false);
            sureMenu.SetActive(false);
            if (isHouseReady) start.interactable = true;
            else start.interactable = false;
		}

		else{

            
			if(!menuOpen)
			{
                loadingScreen.SetActive(false);
                optionMenu.SetActive(false);			
			}

            else if (menuOpen)
            {
                loadingScreen.SetActive(false);
                optionMenu.SetActive(true);
            }

			
			if(areYouSure)
			{
                sureMenu.SetActive(true);
			}
		}

	}

	void Update()
	{
		if(isFading)
			FadeToBlack ();
		else FadeToClear();

        if (Input.GetKeyDown(KeyCode.Escape) && !controls)
        {
            ToggleWindow();
        }

	}
	
	public void FadeToBlack()
	{
        fader.color = Color.Lerp(fader.color, Color.black, Time.deltaTime/fadeSpeed);
		guiColor = Color.Lerp(guiColor, Color.clear, Time.deltaTime/fadeSpeed);
	}
	
	public void FadeToClear()
	{
        fader.color = Color.Lerp(fader.color, Color.clear, Time.deltaTime/fadeSpeed);
		guiColor = Color.Lerp(guiColor, Color.white, Time.deltaTime/fadeSpeed);
	}


    private void ApplyButtonClick()
    {
        menuOpen = false;
    }

    private void CancelButtonClick()
    {
        menuOpen = false;
    }

    private void MusicButtonClick()
    {
        musicTog = !musicTog;
        ToggleMusic();
    }

    private void SoundButtonClick()
    {
        SFXTog = !SFXTog;
        ToggleSound();
    }

    private void StartButtonClick()
    {
        gameHandler.GetComponent<GameManager>().SpawnCharacters();
        controls = false;
    }

    private void EndGameButtonClick()
    {
        areYouSure = true;
    }

    private void ToggleSound()
    {
        GameObject.FindGameObjectWithTag("SoundEffect").GetComponent<SoundPlayer>().isEnabled = SFXTog;
        soundCross.enabled = SFXTog;
    }

    private void ToggleMusic()
    {
        if (GameObject.FindGameObjectWithTag("Sound") != null)
            GameObject.FindGameObjectWithTag("Sound").GetComponent<AudioSource>().mute = !musicTog;
        musicCross.enabled = musicTog;
    }

    private void EndGameCancelButtonClick()
    {
        sureMenu.SetActive(false);
        areYouSure = false;
    }

    private void EndGameYesButtonClick()
    {
        Application.LoadLevel(0);
    }

    private void ToggleWindow()
    {
        menuOpen = !menuOpen;
        sureMenu.SetActive(false);
        areYouSure = false;
    }
}
