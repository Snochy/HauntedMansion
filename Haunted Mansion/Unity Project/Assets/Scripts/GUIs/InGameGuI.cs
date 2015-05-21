using UnityEngine;
using System.Collections;

public class InGameGuI : MonoBehaviour {

	public Texture2D cogIcon;
	public Texture2D XIcon;
	
	public Texture2D redHealthBar;

	public Texture2D keybaordIconA;
	public GUIStyle menuStyle;
	public GUIStyle HUDStyle;

	public float fadeSpeed = 1f;

	public bool menuOpen = false;

	private bool musicTog = true;
	private bool SFXTog = true;

	private bool controls = true;

	private bool isFading = false;

    public bool isHouseReady = false;
    
    public bool areYouSure = false;

	public Color guiColor = Color.clear;

    public GameObject gameHandler;

	GUIContent button01Content = new GUIContent();
	GUIContent button02Content = new GUIContent();


	void Start() {
		GetComponent<GUITexture>().color = Color.black;
	}
	void OnGUI () {

		GetComponent<GUITexture>().pixelInset = new Rect(0f, 0f, Screen.width, Screen.height);
		GUI.color = guiColor;
		if(controls)
		{
			GUI.Box(new Rect(0,0, Screen.width,Screen.height),"",menuStyle);
			GUI.Box(new Rect(Screen.width * .3f,Screen.height * .3f, 200,200),keybaordIconA);
			GUI.Label(new Rect(Screen.width * .11f,Screen.height * .16f, 200,200),"");

			GUI.Label(new Rect(Screen.width * .6f,Screen.height * .3f, 200,200),"Ues W,A,S,D to move your character. \n\nUse Q, E, to strafe. \n\nC to turn on and off your flashlight.\n\nSPACE to jump.\n\nClick and hold LEFT or RIGHT MOUSE buttons to look around.");

            if(isHouseReady)
			    if(GUI.Button(new Rect(Screen.width * .3f,Screen.height * .65f, 100,50),"Close"))
			    {
                    gameHandler.GetComponent<GameManager>().SpawnCharacters();
				    controls = false;
			    }
		}

		else{

			if(!menuOpen)
			{

				if(Input.GetKeyDown(KeyCode.Escape))
				{
					GetComponent<GUITexture>().color = new Color(0,0,0,0.75f);
					menuOpen = true;
				}
				
				GUI.Box(new Rect(Screen.width * .01f,Screen.height * .01f, Screen.width * .25f, Screen.height * .05f),"HP:",HUDStyle);
				GUI.Box(new Rect(Screen.width * .05f,Screen.height * .02f, Screen.width * .15f, Screen.height * .025f), redHealthBar);
				
			}

			if(menuOpen)
			{
				GUI.Box(new Rect(Screen.width * .25f,Screen.height * .25f, Screen.width * .5f, Screen.height * .5f),"",menuStyle);
				if(GUI.Button(new Rect(Screen.width * .3f,Screen.height * .3f, 50,50),button01Content.image))
				{
					musicTog = !musicTog;
				}
				GUI.Label(new Rect(Screen.width * .39f,Screen.height * .32f, 50,50),"Music");
				if(GUI.Button(new Rect(Screen.width * .3f,Screen.height * .4f, 50,50),button02Content.image))
				{
					SFXTog = !SFXTog;
				}
				GUI.Label(new Rect(Screen.width * .39f,Screen.height * .42f, 100,50),"Sound FX");
				if(GUI.Button(new Rect(Screen.width * .55f,Screen.height * .70f, 100,25),"Apply"))
				{
					menuOpen = false;
					GetComponent<GUITexture>().color = new Color(0,0,0,0f);
				}
				
				if(GUI.Button(new Rect(Screen.width * .65f,Screen.height * .70f, 100,25),"Cancel"))
				{
					menuOpen = false;
					GetComponent<GUITexture>().color = new Color(0,0,0,0f);
				}
				
				
				if(GUI.Button(new Rect(Screen.width * .28f,Screen.height * .70f, 100,25), "End Game"))
				{
					areYouSure = true;
					menuOpen = false;
				}
				
				if(Input.GetKeyDown(KeyCode.Escape))
				{
					menuOpen = false;
				}
			}

			if(GameObject.FindGameObjectWithTag("Sound") != null)
			{
				if(musicTog)
				{
					GameObject.FindGameObjectWithTag("Sound").GetComponent<AudioSource>().mute = false;
					button01Content.image = XIcon;

				}
				else 
				{
					GameObject.FindGameObjectWithTag("Sound").GetComponent<AudioSource>().mute = true;
					button01Content.image = null;
				}

				if(SFXTog)
				{
					GameObject[] temp = GameObject.FindGameObjectsWithTag("SoundEffect");
					foreach(GameObject go in temp)
						go.GetComponent<AudioSource>().mute = false;
					button02Content.image = XIcon;
					
				}
				else 
				{
					button02Content.image = null;
					GameObject[] temp = GameObject.FindGameObjectsWithTag("SoundEffect");
					foreach(GameObject go in temp)
						go.GetComponent<AudioSource>().mute = true;
					button02Content.image = null;
				}
			}
			
			if(areYouSure)
			{
				GUI.Box(new Rect(Screen.width * .375f,Screen.height * .375f, Screen.width * .25f, Screen.height * .15f),"Are you sure you want to leave the game and go back to the main menu?",menuStyle);
				if(GUI.Button(new Rect(Screen.width * .4f,Screen.height * .48f, 100,25), "End Game"))
				{
					Application.LoadLevel(0);
				}
				if(GUI.Button(new Rect(Screen.width * .5f,Screen.height * .48f, 100,25), "Back"))
				{
					areYouSure = false;
				}
			}
		}

	}

	void Update()
	{
		if(!menuOpen && !isFading)
		{
			GetComponent<GUITexture>().color = Color.Lerp(GetComponent<GUITexture>().color, Color.clear, fadeSpeed * Time.deltaTime);
			guiColor = Color.Lerp(guiColor, Color.white, fadeSpeed * Time.deltaTime);
		}
		if(isFading)
		{
			GetComponent<GUITexture>().color = Color.Lerp(GetComponent<GUITexture>().color, Color.black, Time.deltaTime);
			guiColor = Color.Lerp(guiColor, Color.clear, Time.deltaTime);
		}
	}
}
