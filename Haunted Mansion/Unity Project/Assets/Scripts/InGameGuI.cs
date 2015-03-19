using UnityEngine;
using System.Collections;

public class InGameGuI : MonoBehaviour {

	public Texture2D cogIcon;
	public Texture2D XIcon;

	public Texture2D keybaordIconA;
	public GUIStyle menuStyle;

	public float fadeSpeed = 1f;

	public bool menuOpen = false;

	private bool musicTog = true;
	private bool SFXTog = true;

	private bool controls = true;

	private bool isFading = false;

	public Color guiColor = Color.clear;

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
			GUI.Box(new Rect(Screen.width * .1f,Screen.height * .15f, Screen.width * .8f,400),"",menuStyle);
			GUI.Box(new Rect(Screen.width * .3f,Screen.height * .3f, 200,200),keybaordIconA);
			GUI.Label(new Rect(Screen.width * .11f,Screen.height * .16f, 200,200),"Controls");

			GUI.Label(new Rect(Screen.width * .6f,Screen.height * .3f, 200,200),"Ues W,A,S,D to move your character. \n\nUse Q, E, to strafe. \n\nC to turn on and off your flashlight.\n\nSPACE to jump.\n\nClick and hold LEFT or RIGHT MOUSE buttons to look around.");

			if(GUI.Button(new Rect(Screen.width * .3f,Screen.height * .65f, 100,50),"Close"))
			{
				controls = false;
			}
		}

		else{

			if(!menuOpen)
			{
				if(GUI.Button(new Rect(Screen.width * .05f,Screen.height * .05f, 200,50), "Back"))
				{
					isFading = true;
				}

				if(GUI.Button(new Rect(Screen.width * .90f,Screen.height * .05f, 50,50), cogIcon))
				{
					GetComponent<GUITexture>().color = new Color(0,0,0,0.75f);
					menuOpen = true;
				}
			}

			if(menuOpen)
			{
				GUI.Box(new Rect(Screen.width * .25f,Screen.height * .25f, 400,200),"",menuStyle);
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
				if(GUI.Button(new Rect(Screen.width * .45f,Screen.height * .5f, 100,25),"Apply"))
				{
					menuOpen = false;
					GetComponent<GUITexture>().color = new Color(0,0,0,0f);
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
					button02Content.image = XIcon;
					
				}
				else 
				{
					button02Content.image = null;
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

		if(GetComponent<GUITexture>().color.a >= 0.95f && isFading)
		{
			isFading = false;
			Application.LoadLevel(0);
		}
	}
}
