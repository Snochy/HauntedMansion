using UnityEngine;
using System.Collections;

public class GameManager : MonoBehaviour
{

    public Maze mazePrefab;
    private Maze mazeInstance;
    public GameObject mainCharacter;
    public GameObject GUIHandler;

    public GameObject teddyHaunt;

    public bool isHouseBuilt;
    public bool propsSpawned;
    public bool hauntstart;

	//Begins with starting the game
    void Start()
    {
        BeginGame();
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
            GameObject haunt = Instantiate(teddyHaunt) as GameObject;
            haunt.transform.parent = this.transform.parent;
            hauntstart = false;
        }

        Physics.gravity = new Vector3(0, -600.0F, 0);
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
		GameObject character = Instantiate(mainCharacter) as GameObject;
		character.name = "Character 01";		
		character.transform.position =
			new Vector3(-250f, 33f, -1200f);
    }

	//Makes instance of Maze and generates maze within Maze
    private void BeginGame()
    {
        mazeInstance = Instantiate(mazePrefab) as Maze;
        StartCoroutine(mazeInstance.Generate());
    }

	//Stops and restarts the generation
    private void RestartGame()
    {
        isHouseBuilt = false;
        StopAllCoroutines();
        Destroy(mazeInstance.gameObject);
        BeginGame();
    }
}