using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.EventSystems;

public class GUI_Handler : MonoBehaviour {
	
	public float fadeSpeed = 1f;
	public bool isFading = false;
	
	public Texture2D background;
	public Texture2D map;
	
	public GUIStyle buttonStyle;
	public GUIStyle dropDownStyle;
	public GUIStyle boxStyle;
	public GUIStyle textStyle;
	
	public GUIStyle inactiveButtonStyle;
	public GUIStyle inactiveBoxStyle;
	
	public Color guiColor = Color.clear;

    public GameObject scrollingMenu;
    public GameObject startBack;
    public GameObject launchMenu;
    public Image fader;

    public Button back;
    public Button start;
    public Button classic;
    public Button exit;
	
	public int menuNum = 0;

	int menuDirection = 0;

	void Start(){
		fader.color = Color.black;
        back.onClick.AddListener(() => { BackButtonClick(); });
        start.onClick.AddListener(() => { StartButtonClick(); });
        classic.onClick.AddListener(() => { ClassicButtonClick(); });
        exit.onClick.AddListener(() => { ExitButtonClick(); });
	}

	void OnGUI () {
		
		if(menuNum == 0)
		{
            scrollingMenu.SetActive(false);
            startBack.SetActive(false);
            launchMenu.SetActive(true);
		}
		
		if(menuNum == 1)
		{
            scrollingMenu.SetActive(true);
            startBack.SetActive(true);
            launchMenu.SetActive(false);
		}

        if (menuNum >= 2)
        {
            Application.LoadLevel(1);
        }
	}
	
	void Update()
	{
		if(isFading)
			FadeToBlack ();
		else FadeToClear();
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

    public void BackButtonClick()
    {
        if (!isFading)
        {
            isFading = true;
            menuDirection = -1;
            StartCoroutine(Intermission(fadeSpeed));
        }
    }

    public void ClassicButtonClick()
    {
        if (!isFading)
        {
            isFading = true;
            menuDirection = 1;
            StartCoroutine(Intermission(fadeSpeed));
        }
    }

    public void ExitButtonClick()
    {
        if (!isFading)
        {
            menuDirection = 0;
            isFading = true;
            StartCoroutine(Intermission(fadeSpeed));
            Application.Quit();
        }
    }

    public void StartButtonClick()
    {
        if (!isFading)
        {
            StartCoroutine(Intermission(fadeSpeed));
            isFading = true;
        }
    }

    IEnumerator Intermission(float a)
    {
        yield return new WaitForSeconds(a + 2f);
        menuNum += menuDirection;
        isFading = false;
    }
}
