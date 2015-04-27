using UnityEngine;
using System.Collections;

public class GUI_Handler : MonoBehaviour {
	
	public float fadeSpeed = 1f;
	public bool isFading = false;
	
	public Texture2D background;
	public Texture2D map;

	public Texture2D avatarP1;
	public Texture2D avatarP2;
	public Texture2D avatarP3;
	public Texture2D avatarP4;
	public Texture2D avatarP5;
	
	public GUIStyle buttonStyle;
	public GUIStyle dropDownStyle;
	public GUIStyle boxStyle;
	public GUIStyle textStyle;
	
	public GUIStyle inactiveButtonStyle;
	public GUIStyle inactiveBoxStyle;
	
	public Color guiColor = Color.clear;
	
	public int menuNum = 0;

	private Vector2 scrollViewVector = Vector2.zero;
	public Rect dropDownRect01 = new Rect(125,50,125,150);
	public Rect dropDownRect02 = new Rect(125,50,125,150);
	public Rect dropDownRect03 = new Rect(125,50,125,150);
	public Rect dropDownRect04 = new Rect(125,50,125,150);
	public Rect dropDownRect05 = new Rect(125,50,125,150);

	public static string[] list = {"No Player","Professor Bond", "Anne Frank", "Lucy Cake", "Thor Hammer", "Bob Apples"};
	public Texture2D[] avatars = new Texture2D[6];
	
	int indexNumber01;
	int indexNumber02;
	int indexNumber03;
	int indexNumber04;
	int indexNumber05;
	bool show01 = false;
	bool show02 = false;
	bool show03 = false;
	bool show04 = false;
	bool show05 = false;

	int menuDirection = 0;

	void Start(){
		GetComponent<GUITexture>().color = Color.black;
	}
	void OnGUI () {
		GetComponent<GUITexture>().pixelInset = new Rect(0f, 0f, Screen.width, Screen.height);
		
		if(menuNum == 0)
		{
			GUI.color = guiColor;
			if(GUI.Button(new Rect(Screen.width * .4f,Screen.height * .7f, 200,50), "Classic", buttonStyle) && !isFading)
			{
				isFading = true;
				menuDirection = 1;
				GameObject.FindGameObjectWithTag("Sound").GetComponent<SoundPlayer>().PlayAudio("click");
			}

			if(GUI.Button(new Rect(Screen.width * .4f,Screen.height * .8f, 200,50), "Quit", buttonStyle) && !isFading)
			{
				menuDirection = 0;
				isFading = true;
				GameObject.FindGameObjectWithTag("Sound").GetComponent<SoundPlayer>().PlayAudio("click");
				Application.Quit();
			}
		}
		bool ready;
		if(indexNumber01 > 0 || indexNumber02 > 0 || indexNumber03 > 0 || indexNumber04 > 0 || indexNumber05 > 0 )
			ready = true;
		else ready = false;
		
		if(menuNum == 1)
		{
			GUI.color = guiColor;
			GUI.DrawTexture(new Rect(0,0,Screen.width, Screen.height), background);

			//Player Boxes
			GUI.Box (new Rect(25,25,500,150),"",boxStyle);
			GUI.Label (new Rect(155,50,123,150),"Player 1", textStyle);
			GUI.Box (new Rect(50,50,100,100),avatarP1);

			GUI.Box (new Rect(25,200,500,100),"",boxStyle);
			GUI.Label (new Rect(135,215,123,150),"Player 2", textStyle);
			GUI.Box (new Rect(50,215,75,75),avatarP2);

			GUI.Box (new Rect(25,310,500,100),"",boxStyle);
			GUI.Label (new Rect(135,325,123,150),"Player 3", textStyle);
			GUI.Box (new Rect(50,325,75,75),avatarP3);

			GUI.Box (new Rect(25,420,500,100),"",boxStyle);
			GUI.Label (new Rect(135,435,123,150),"Player 4", textStyle);
			GUI.Box (new Rect(50,435,75,75),avatarP4);

			GUI.Box (new Rect(25,530,500,100),"",inactiveBoxStyle);
			GUI.Label (new Rect(135,545,123,150),"Player 5", textStyle);
			GUI.Box (new Rect(50,545,75,75),avatarP5);

			//Back Button
			if(GUI.Button (new Rect(575,530,200,50),"Back",buttonStyle))
			{
				GameObject.FindGameObjectWithTag("Sound").GetComponent<SoundPlayer>().PlayAudio("click");
				isFading = true;
				menuDirection = -1;
			}

			//Map Image
			GUI.Label (new Rect(575,25,250,250),"The Ravenhill Mansion", textStyle);
			GUI.Box (new Rect(575,75,250,250),map);
			//Play Button
			if(ready)
			{
				if(GUI.Button (new Rect(575,350,200,50),"START",buttonStyle))
				{
					GameObject.FindGameObjectWithTag("Sound").GetComponent<SoundPlayer>().PlayAudio("click");
					isFading = true;
				}
			}
			else GUI.Button (new Rect(575,350,200,50),"START", inactiveButtonStyle);

			//Drop down menus

			/*
			if(GUI.Button(new Rect((dropDownRect05.x - 100), dropDownRect05.y, dropDownRect05.width, 25), "",buttonStyle))
			{
				if(!show05)
				{
					show05 = true;
				}
				else
				{
					show05 = false;
				}
			}
			if(show05)
			{
				scrollViewVector = GUI.BeginScrollView(new Rect((dropDownRect05.x - 100), (dropDownRect05.y + 25), dropDownRect05.width, dropDownRect05.height),scrollViewVector,new Rect(0, 0, dropDownRect05.width, Mathf.Max(dropDownRect05.height, (list.Length*25))));
				
				GUI.Box(new Rect(0, 0, dropDownRect05.width, Mathf.Max(dropDownRect05.height, (list.Length*25))), "",buttonStyle);
				
				for(int index = 0; index < list.Length; index++)
				{
					
					if(GUI.Button(new Rect(0, (index*25), dropDownRect05.height, 25), "",buttonStyle))
					{
						show05 = false;
						indexNumber05 = index;
					}
					
					GUI.Label(new Rect(5, (index*25), dropDownRect05.height, 25), list[index]);
					
				}
				
				GUI.EndScrollView();   
			}
			else
			{
				GUI.Label(new Rect((dropDownRect05.x - 95), dropDownRect05.y, 300, 25), list[indexNumber05]);
			}
			*/


			if(GUI.Button(new Rect((dropDownRect04.x - 100), dropDownRect04.y, dropDownRect04.width, 25), "",dropDownStyle))
			{
				if(!show04)
				{
					show04 = true;
				}
				else
				{
					show04 = false;
				}
			}
			if(show04)
			{
				scrollViewVector = GUI.BeginScrollView(new Rect((dropDownRect04.x - 100), (dropDownRect04.y + 25), dropDownRect04.width, dropDownRect04.height),scrollViewVector,new Rect(0, 0, dropDownRect04.width, Mathf.Max(dropDownRect04.height, (list.Length*25))));
				
				GUI.Box(new Rect(0, 0, dropDownRect04.width, Mathf.Max(dropDownRect04.height, (list.Length*25))), "",dropDownStyle);
				
				for(int index = 0; index < list.Length; index++)
				{
					
					if(GUI.Button(new Rect(0, (index*25), dropDownRect04.height, 25), "",dropDownStyle))
					{
						show04 = false;
						indexNumber04 = index;
					}
					
					GUI.Label(new Rect(5, (index*25), dropDownRect04.height, 25), list[index]);
					
				}
				
				GUI.EndScrollView();   
			}
			else
			{
				GUI.Label(new Rect((dropDownRect04.x - 95), dropDownRect04.y, 300, 25), list[indexNumber04]);
			}
			if(GUI.Button(new Rect((dropDownRect03.x - 100), dropDownRect03.y, dropDownRect03.width, 25), "",dropDownStyle))
			{
				if(!show03)
				{
					show03 = true;
				}
				else
				{
					show03 = false;
				}
			}
			
			if(show03)
			{
				scrollViewVector = GUI.BeginScrollView(new Rect((dropDownRect03.x - 100), (dropDownRect03.y + 25), dropDownRect03.width, dropDownRect03.height),scrollViewVector,new Rect(0, 0, dropDownRect03.width, Mathf.Max(dropDownRect03.height, (list.Length*25))));
				
				GUI.Box(new Rect(0, 0, dropDownRect03.width, Mathf.Max(dropDownRect03.height, (list.Length*25))), "",dropDownStyle);
				
				for(int index = 0; index < list.Length; index++)
				{
					
					if(GUI.Button(new Rect(0, (index*25), dropDownRect03.height, 25), "",dropDownStyle))
					{
						show03 = false;
						indexNumber03 = index;
					}
					
					GUI.Label(new Rect(5, (index*25), dropDownRect03.height, 25), list[index]);
					
				}
				
				GUI.EndScrollView();   
			}
			else
			{
				GUI.Label(new Rect((dropDownRect03.x - 95), dropDownRect03.y, 300, 25), list[indexNumber03]);
			}
			
			
			if(GUI.Button(new Rect((dropDownRect02.x - 100), dropDownRect02.y, dropDownRect02.width, 25), "",dropDownStyle))
			{
				if(!show02)
				{
					show02 = true;
				}
				else
				{
					show02 = false;
				}
			}
			
			if(show02)
			{
				scrollViewVector = GUI.BeginScrollView(new Rect((dropDownRect02.x - 100), (dropDownRect02.y + 25), dropDownRect02.width, dropDownRect02.height),scrollViewVector,new Rect(0, 0, dropDownRect02.width, Mathf.Max(dropDownRect02.height, (list.Length*25))));
				
				GUI.Box(new Rect(0, 0, dropDownRect02.width, Mathf.Max(dropDownRect02.height, (list.Length*25))), "",dropDownStyle);
				
				for(int index = 0; index < list.Length; index++)
				{
					
					if(GUI.Button(new Rect(0, (index*25), dropDownRect02.height, 25), "",dropDownStyle))
					{
						show02 = false;
						indexNumber02 = index;
					}
					
					GUI.Label(new Rect(5, (index*25), dropDownRect02.height, 25), list[index]);
					
				}
				
				GUI.EndScrollView();   
			}
			else
			{
				GUI.Label(new Rect((dropDownRect02.x - 95), dropDownRect02.y, 300, 25), list[indexNumber02]);
			}
			
			if(GUI.Button(new Rect((dropDownRect01.x - 100), dropDownRect01.y, dropDownRect01.width, 25), "", dropDownStyle))
			{
				if(!show01)
				{
					show01 = true;
				}
				else
				{
					show01 = false;
				}
			}
			
			if(show01)
			{
				scrollViewVector = GUI.BeginScrollView(new Rect((dropDownRect01.x - 100), (dropDownRect01.y + 25), dropDownRect01.width, dropDownRect01.height),scrollViewVector,new Rect(0, 0, dropDownRect01.width, Mathf.Max(dropDownRect01.height, (list.Length*25))));
				
				GUI.Box(new Rect(0, 0, dropDownRect01.width, Mathf.Max(dropDownRect01.height, (list.Length*25))), "", dropDownStyle);
				
				for(int index = 0; index < list.Length; index++)
				{
					
					if(GUI.Button(new Rect(0, (index*25), dropDownRect01.height, 25), "",dropDownStyle))
					{
						show01 = false;
						indexNumber01 = index;
					}
					
					GUI.Label(new Rect(5, (index*25), dropDownRect01.height, 25), list[index]);
					
				}
				
				GUI.EndScrollView();   
			}
			else
			{
				GUI.Label(new Rect((dropDownRect01.x - 95), dropDownRect01.y, 300, 25), list[indexNumber01]);
			}
			
		}
		
		if(GetComponent<GUITexture>().color.a >= 0.95f && isFading)
		{
			isFading = false;
			menuNum+= menuDirection;
		}

		if(menuNum >= 2)
			Application.LoadLevel(1);
	}
	
	void Update()
	{
		if(isFading)
			FadeToBlack ();
		else FadeToClear();

		avatarP1 = avatars[indexNumber01];
		avatarP2 = avatars[indexNumber02];
		avatarP3 = avatars[indexNumber03];
		avatarP4 = avatars[indexNumber04];
		avatarP5 = avatars[indexNumber05];
	}
	
	public void FadeToBlack()
	{
		GetComponent<GUITexture>().color = Color.Lerp(GetComponent<GUITexture>().color, Color.black, fadeSpeed * Time.deltaTime);
		guiColor = Color.Lerp(guiColor, Color.clear, fadeSpeed * Time.deltaTime);
	}
	
	public void FadeToClear()
	{
		GetComponent<GUITexture>().color = Color.Lerp(GetComponent<GUITexture>().color, Color.clear, fadeSpeed * Time.deltaTime);
		guiColor = Color.Lerp(guiColor, Color.white, fadeSpeed * Time.deltaTime);
	}
}
