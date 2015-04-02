using UnityEngine;
using System.Collections;

public class GameManager : MonoBehaviour
{

    public Maze mazePrefab;
    private Maze mazeInstance;
    public GameObject mainCharacter;

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

    }

    public void LoadAssets()
    {

        transform.GetComponent<InputRooms>().ReplaceRooms();
        transform.GetComponent<InputRooms>().ReplaceRoomsUpper();
    }

    public Maze GetMaze()
    {
        return mazeInstance;
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
        StopAllCoroutines();
        Destroy(mazeInstance.gameObject);
        BeginGame();
    }
}