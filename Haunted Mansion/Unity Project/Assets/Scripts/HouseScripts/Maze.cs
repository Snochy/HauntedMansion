using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Maze : MonoBehaviour {

    public IntVector2 size;

    public MazeCell cellPrefab;
    public MazePassage passagePrefab;
    public MazeWall wallPrefab;
    public GameObject mainHall;

    private MazeCell[,] cells;

    public float generationStepDelay;
	
	//Has step delay
	//Makes cells array equal to the demenions
	//Makes a list for the cells
	//Runs the first random cell
	//Repeats until list is empty
    public IEnumerator Generate()
    {
        WaitForSeconds delay = new WaitForSeconds(generationStepDelay);
        cells = new MazeCell[size.x, size.z];
        List<MazeCell> activeCells = new List<MazeCell>();
        DoFirstGenerationStep(activeCells);
        while (activeCells.Count > 0)
        {
            yield return delay;
            DoNextGenerationStep(activeCells);
        }
    }

	//The first step adds the cell it creates to the list sent to it and runs the create cell method by sending it
	// random values from the method
    private void DoFirstGenerationStep(List<MazeCell> activeCells)
    {
		AddEntranceHall(activeCells);
        activeCells.Add(CreateCell(RandomCoordinates));
    }

	//Called after the First step, also take sin list
	//Takes active cell count and minuses one for current index so its starts as 0 as 1
	//Current cell is taken from the list and store in variable
    private void DoNextGenerationStep(List<MazeCell> activeCells)
    {
        int currentIndex = activeCells.Count - 1;
        MazeCell currentCell = activeCells[currentIndex];
		
		//Ask if currentCell as mean fully Initialize, meaning sides been initialzed fully or not
		//this makes it so once a dead end is reach the cell is finished and it goes back tracks
        if (currentCell.IsFullyInitialized)
        {
			//if cells has all its sides determine, then remove it from list
            activeCells.RemoveAt(currentIndex);
            return;
        }

		//current checking direction randomly decided
        MazeDirection direction = currentCell.RandomUninitializedDirection;
		//Find the coords of the next space it wants to check
        IntVector2 coordinates = currentCell.coordinates + direction.ToIntVector2();
		//If it contains within demenions
        if (ContainsCoordinates(coordinates))
        {
			//Find the neigbor by getting the cell at location
            MazeCell neighbor = GetCell(coordinates);

			//If no cell is at neigboring location
			//Create a maze cell at negboring location
			//Create a passage as the wall betweens current and neigbor
			//neighbot is added to the list
            if (neighbor == null)
            {
                neighbor = CreateCell(coordinates);
                CreatePassage(currentCell, neighbor, direction);
                activeCells.Add(neighbor);
            }
			//If cell is currently being used then place a wall
            else
            {
                CreateWall(currentCell, neighbor, direction);
            }
        }
		//If edge make a wall at location
        else
        {
            CreateWall(currentCell, null, direction);
        }
    }

	//Takes in coords
	//Instantiates a cell prefab
	//The araay adds maze cell
	//New ceels cords are stored in its variable
	//Its name changes to reflect its coord
	//Its parent is set to this scripts transform
	//Its position is placed based on corrds * 600 for unity units conversion of models
	//Returns cell to add to list
	private MazeCell CreateCell (IntVector2 coordinates) {
		MazeCell newCell = Instantiate(cellPrefab) as MazeCell;
		cells[coordinates.x, coordinates.z] = newCell;
		newCell.coordinates = coordinates;
		newCell.name = "Room Cell " + coordinates.x + ", " + coordinates.z;
		newCell.transform.parent = transform;
		newCell.transform.localPosition =
                new Vector3((coordinates.x - size.x * 0.5f) * 600, 0f, (coordinates.z - size.z * 0.5f) * 600);
		return newCell;
	}

	//Told to get the Mazecell at coords
	public MazeCell GetCell(IntVector2 coordinates)
	{
		return cells[coordinates.x, coordinates.z];
	}

	//Make a passage between two cells
	//Make a passage on the current cell
	//Initialize passage for the cell
	//Make another passage for neighboring cell, and initialize it
    private void CreatePassage(MazeCell cell, MazeCell otherCell, MazeDirection direction)
    {
        MazePassage passage = Instantiate(passagePrefab) as MazePassage;
        passage.Initialize(cell, otherCell, direction);
        passage = Instantiate(passagePrefab) as MazePassage;
        passage.Initialize(otherCell, cell, direction.GetOpposite());
    }

	//Make a wall between two cells
	//Make a passage on the current cell
	//Checks if other side is null
	//if not then give it a wall too
    private void CreateWall(MazeCell cell, MazeCell otherCell, MazeDirection direction)
    {
        MazeWall wall = Instantiate(wallPrefab) as MazeWall;
        wall.Initialize(cell, otherCell, direction);
        if (otherCell != null)
        {
            wall = Instantiate(wallPrefab) as MazeWall;
            wall.Initialize(otherCell, cell, direction.GetOpposite());
        }
    }
    
	//Generates random coords
    public IntVector2 RandomCoordinates
    {
        get
        {
            return new IntVector2(Random.Range(0, size.x), Random.Range(0, size.z));
        }
    }

	//Checks if with demis
    public bool ContainsCoordinates(IntVector2 coordinate)
    {
        return coordinate.x >= 0 && coordinate.x < size.x && coordinate.z >= 0 && coordinate.z < size.z;
    }
    
	//My sad attempt to add a entrance hall
	private void AddEntranceHall(List<MazeCell> activeCells)
    {
    	int halfX = size.x / 2;
    	int halfZ = size.z / 2;
    	for(int x = 2; x >= 0; x--)
    		for(int z = 2; z >= 0; z--)
				activeCells.Add(CreateCell(new IntVector2(halfX - x,halfZ - z)));
    }
}
