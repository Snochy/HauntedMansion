using UnityEngine;
using System.Collections;

public class GameManager : MonoBehaviour
{

    public Maze mazePrefab;
    private Maze mazeInstance;

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