using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class GameManager : MonoBehaviour
{

    public Maze mazePrefab;
    private Maze mazeInstance;
    public GameObject GUIHandler;

    public string nightmareSelected;

    public bool isHouseBuilt;
    public bool propsSpawned;
    public bool hauntstart;

    public bool characterControlEnabled;

    public GameObject aStar;

    public List<GameObject> listOfPlayers;

    private bool timerOn = false;
    public float gameTime = 0;

    public float gravity = 600;

	//Begins with starting the game
    void Start()
    {
        gameTime = 0;
        BeginGame();
		PlayerStatsHandler.PlayerDeath += DisableCharacter;
    }

	//Player can reset game by pressing R
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.R))
        {
            RestartGame();
        }

        if (isHouseBuilt)
        {
            GUIHandler.GetComponent<InGameGuI>().isHouseReady = true;
        }

        if (hauntstart)
        {
            int nightmareNum = Random.Range(0, NightmareBase.NightmareList.Count);
            GameObject haunt = Instantiate(NightmareBase.Get(nightmareNum).Prefab) as GameObject;
            this.gameObject.GetComponent<GlobalHauntControllor>().SetNightmare(NightmareBase.Get(nightmareNum).Prefab);
            haunt.transform.parent = this.transform;
            hauntstart = false;
            aStar.GetComponent<Astar>().SetNetworkConnections();
        }

        if (timerOn)
            gameTime += Time.deltaTime;

        Physics.gravity = new Vector3(0, -gravity, 0);
    }

    public void StartHaunt()
    {
        hauntstart = true;
    }

    public Maze GetMaze()
    {
        return mazeInstance;
    }
    
    public void SpawnCharacters()
    {
		GameObject character = Instantiate(CharacterBase.Get(PlayerStats.GetPlayerCharID()).Prefab) as GameObject;
		character.name = "Character 01";		
		character.transform.position =
			new Vector3(-250f, 33f, -1200f);
        AddPlayer(character);
    }

	//Makes instance of Maze and generates maze within Maze
    private void BeginGame()
    {
        mazeInstance = Instantiate(mazePrefab) as Maze;
        StartCoroutine(mazeInstance.Generate());
        characterControlEnabled = true;
        ToggleTimer();
    }

	//Stops and restarts the generation
    private void RestartGame()
    {
        isHouseBuilt = false;
        StopAllCoroutines();
        Destroy(mazeInstance.gameObject);
        BeginGame();
    }

    public void EndGame()
    {
        RemoveAllPlayer();
        Application.LoadLevel(0);
    }

    public void ObjectiveComplete(bool a)
    {
        if (a)
            GameObject.Find("GUIElements").GetComponent<InGameGuI>().finishStatement.text = "You have survived the night!";
        else GameObject.Find("GUIElements").GetComponent<InGameGuI>().finishStatement.text = "You did not survive.";

        ToggleTimer();

        GameObject.Find("GUIElements").GetComponent<InGameGuI>().finalPanel = true;

        characterControlEnabled = false;
    }

    public void AddPlayer(GameObject player)
    {
        listOfPlayers.Add(player);
    }
    public void RemovePlayer(GameObject player)
    {
        listOfPlayers.Remove(player);
    }
    public void RemoveAllPlayer()
    {
        listOfPlayers.Clear();
    }

    public void ToggleTimer()
    {
        timerOn = !timerOn;
    }

	void DisableCharacter (GameObject player)
	{
		characterControlEnabled = false;
	}
}