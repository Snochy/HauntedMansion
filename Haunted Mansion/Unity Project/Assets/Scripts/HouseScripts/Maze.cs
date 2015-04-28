﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Maze : MonoBehaviour {

    public IntVector2 size;

    public MazeCell cellPrefab;
    public MazePassage passagePrefab;
    public MazeWall wallPrefab;
    public MazeCeiling ceilingPrefab;
    public GameObject mainHall;

    public MazeCell[,] groundCells;
    public MazeCell[,] upperCells;
    public MazeCell[,] basementCells;

    public float generationStepDelay;

    public MazeDoor doorPrefab;

    private int roomIndex = 0;

    [Range(0f, 1f)]
    public float doorProbability;

    public List<MazeRoom> rooms = new List<MazeRoom>();

    public MazeRoomSettings[] roomSettings;

    private MazeRoom CreateRoom(int indexToExclude)
    {
        MazeRoom newRoom = ScriptableObject.CreateInstance<MazeRoom>();
        newRoom.settingsIndex = Random.Range(0, roomSettings.Length);
        if (newRoom.settingsIndex == indexToExclude)
        {
            newRoom.settingsIndex = (newRoom.settingsIndex + 1) % roomSettings.Length;
        }
        newRoom.settings = roomSettings[newRoom.settingsIndex];
        rooms.Add(newRoom);
        return newRoom;
    }

    public MazeCell[,] GetMazeCells()
    {
        return groundCells;
    }

    public MazeCell[,] GetMazeCellsUpper()
    {
        return upperCells;
    }

    public MazeCell[,] GetMazeCellsBasement()
    {
        return basementCells;
    }
	
	//Has step delay
	//Makes cells array equal to the demenions
	//Makes a list for the cells
	//Runs the first random cell
	//Repeats until list is empty
    public IEnumerator Generate()
    {
        WaitForSeconds delay = new WaitForSeconds(generationStepDelay);
        groundCells = new MazeCell[size.x, size.z];
        upperCells = new MazeCell[size.x, size.z];
        basementCells = new MazeCell[size.x, size.z];

        List<MazeCell> activeGroundCells = new List<MazeCell>();
        List<MazeCell> activeUpperCells = new List<MazeCell>();
        List<MazeCell> activeBasementCells = new List<MazeCell>();

        DoFirstGenerationStep(activeGroundCells);
        DoFirstGenerationStepUpper(activeUpperCells);
        DoFirstGenerationStepBasement(activeUpperCells);

        while (activeGroundCells.Count > 0 || activeUpperCells.Count > 0 || activeBasementCells.Count > 0)
        {
            yield return delay;
            if(activeUpperCells.Count > 0)
             DoNextGenerationStep(activeUpperCells);
            if (activeGroundCells.Count > 0)
             DoNextGenerationStep(activeGroundCells);
            if (activeBasementCells.Count > 0)
             DoNextGenerationStep(activeBasementCells);
        }

        if (activeGroundCells.Count == 0 && activeUpperCells.Count == 0 && activeBasementCells.Count == 0)
        {
            GameObject.FindGameObjectWithTag("GameController").GetComponent<GameManager>().isHouseBuilt = true;
        }
    }

	//The first step adds the cell it creates to the list sent to it and runs the create cell method by sending it
	// random values from the method
    private void DoFirstGenerationStep(List<MazeCell> activeCells)
    {
		AddEntranceHallGround(activeCells);
        MazeCell newCell = CreateCell(RandomCoordinates);
        newCell.Initialize(CreateRoom(-1));
        activeCells.Add(newCell);
    }

    private void DoFirstGenerationStepUpper(List<MazeCell> activeCells)
    {
        AddEntranceHallUpper(activeCells);
        MazeCell newCell = CreateCell(RandomCoordinatesUpper);
        newCell.Initialize(CreateRoom(-1));
        activeCells.Add(newCell);
    }

    private void DoFirstGenerationStepBasement(List<MazeCell> activeCells)
    {
        MazeCell newCell = CreateCell(RandomCoordinatesBasement);
        newCell.Initialize(CreateRoom(-1));
        activeCells.Add(newCell);
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
        IntVector3 coordinates = currentCell.coordinates + direction.ToIntVector2();
		//If it contains within demenions
        if (ContainsCoordinates(coordinates))
        {
            MazeCell neighbor = null;
			//Find the neigbor by getting the cell at location
            if (coordinates.y == 0)
                neighbor = GetCell(coordinates);
            if (coordinates.y == 1)
                neighbor = GetCellUpper(coordinates);
            if (coordinates.y == -1)
                neighbor = GetCellBasement(coordinates);

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

            else if (currentCell.room == neighbor.room)
            {
                CreatePassageInSameRoom(currentCell, neighbor, direction);
            }
			//If cell is currently being used then place a wall
            else
            {
                if (neighbor.GetEdge(direction.GetOpposite()) != null)
                {
                    if (neighbor.GetEdge(direction.GetOpposite()).EdgePlaced)
                    {
                        if (neighbor.GetEdge(direction.GetOpposite()).edgeType == EdgeTypes.Wall)
                            CreateWall(currentCell, direction);
                        else if (neighbor.GetEdge(direction.GetOpposite()).edgeType == EdgeTypes.Door)
                            CreatePassage(currentCell, direction, true);
                    }
                }
                else CreateWall(currentCell, neighbor, direction);
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
	private MazeCell CreateCell (IntVector3 coordinates) {
		MazeCell newCell = Instantiate(cellPrefab) as MazeCell;
        if(coordinates.y == 0)
		    groundCells[coordinates.x, coordinates.z] = newCell;
        if (coordinates.y == 1)
            upperCells[coordinates.x, coordinates.z] = newCell;
        if (coordinates.y == -1)
            basementCells[coordinates.x, coordinates.z] = newCell;
		newCell.coordinates = coordinates;
		newCell.name = "Room Cell " + coordinates.x + ", " + coordinates.y + ", " + coordinates.z;
		newCell.transform.parent = transform;
		newCell.transform.localPosition =
                new Vector3((coordinates.x - size.x * 0.5f) * 600, coordinates.y * 337.4f, (coordinates.z - size.z * 0.5f) * 600);

        MazeCeiling ceiling = Instantiate(ceilingPrefab) as MazeCeiling;
        ceiling.Initialize(newCell);


		return newCell;


	}

    private MazeCell CreateCell(IntVector3 coordinates, RoomType roomType)
    {
        MazeCell newCell = Instantiate(cellPrefab) as MazeCell;
        if (coordinates.y == 0)
            groundCells[coordinates.x, coordinates.z] = newCell;
        if (coordinates.y == 1)
            upperCells[coordinates.x, coordinates.z] = newCell;
        if (coordinates.y == -1)
            basementCells[coordinates.x, coordinates.z] = newCell;
        newCell.coordinates = coordinates;
        newCell.name = "Room Cell " + coordinates.x + ", " + coordinates.y + ", " + coordinates.z;
        newCell.transform.parent = transform;
        newCell.transform.localPosition =
                new Vector3((coordinates.x - size.x * 0.5f) * 600, coordinates.y * 337.4f, (coordinates.z - size.z * 0.5f) * 600);
        newCell.roomType = roomType;


        MazeCeiling ceiling = Instantiate(ceilingPrefab) as MazeCeiling;
        ceiling.Initialize(newCell);
        return newCell;
    }

	//Told to get the Mazecell at coords
	public MazeCell GetCell(IntVector3 coordinates)
	{
		return groundCells[coordinates.x, coordinates.z];
	}

    //Told to get the Mazecell at coords
    public MazeCell GetCellUpper(IntVector3 coordinates)
    {
        return upperCells[coordinates.x, coordinates.z];
    }

    //Told to get the Mazecell at coords
    public MazeCell GetCellBasement(IntVector3 coordinates)
    {
        return basementCells[coordinates.x, coordinates.z];
    }

	//Make a passage between two cells
	//Make a passage on the current cell
	//Initialize passage for the cell
	//Make another passage for neighboring cell, and initialize it
    private void CreatePassage(MazeCell cell, MazeCell otherCell, MazeDirection direction)
    {
        MazePassage prefab = Random.value < doorProbability ? doorPrefab : passagePrefab;
        MazePassage passage = Instantiate(prefab) as MazePassage;
        passage.Initialize(cell, otherCell, direction, EdgeTypes.Passage);
        passage = Instantiate(prefab) as MazePassage;
        if (passage is MazeDoor)
        {
            otherCell.Initialize(CreateRoom(cell.room.settingsIndex));
        }
        else
        {
            otherCell.Initialize(cell.room);
        }

        passage.Initialize(otherCell, cell, direction.GetOpposite(), EdgeTypes.Passage);
    }

    //Creates passage if there isnt another walkway invloved
    private void CreatePassage(MazeCell cell, MazeDirection direction)
    {
        MazePassage passage = Instantiate(passagePrefab) as MazePassage;
        passage.Initialize(cell, direction, EdgeTypes.Door);
    }

    private void CreatePassage(MazeCell cell, MazeDirection direction, bool door)
    {
        MazePassage passage = Instantiate(doorPrefab) as MazePassage;
        passage.Initialize(cell, direction, EdgeTypes.Door);
        passage.transform.GetChild(0).GetComponent<Renderer>().material = cell.room.settings.wallMaterial;
    }

	//Make a wall between two cells
	//Make a passage on the current cell
	//Checks if other side is null
	//if not then give it a wall too
    private void CreateWall(MazeCell cell, MazeCell otherCell, MazeDirection direction)
    {
        MazeWall wall = Instantiate(wallPrefab) as MazeWall;
        wall.Initialize(cell, otherCell, direction, EdgeTypes.Wall);
        if (otherCell != null)
        {
            wall = Instantiate(wallPrefab) as MazeWall;
            wall.Initialize(otherCell, cell, direction.GetOpposite(), EdgeTypes.Wall);
        }
    }

    private void CreateWall(MazeCell cell, MazeDirection direction)
    {
        MazeWall wall = Instantiate(wallPrefab) as MazeWall;
        wall.Initialize(cell, direction, EdgeTypes.Wall);
    }
    
	//Generates random coords
    public IntVector3 RandomCoordinates
    {
        get
        {
            IntVector3 temp;
            do
            {
                temp = new IntVector3(Random.Range(0, size.x), 0, Random.Range(0, size.z));
            }
            while(groundCells[temp.x,temp.z] != null);

            return temp;
        }
    }

    //Generates random coords
    public IntVector3 RandomCoordinatesUpper
    {
        get
        {
            IntVector3 temp;
            do
            {
                temp = new IntVector3(Random.Range(0, size.x),1, Random.Range(0, size.z));
            }
            while(upperCells[temp.x,temp.z] != null);

            return temp;
        }
    }

    public IntVector3 RandomCoordinatesBasement
    {
        get
        {
            IntVector3 temp;
            do
            {
                temp = new IntVector3(Random.Range(0, size.x), -1, Random.Range(0, size.z));
            }
            while(basementCells[temp.x,temp.z] != null);

            return temp;
        }
    }

	//Checks if with demis
    public bool ContainsCoordinates(IntVector3 coordinate)
    {
        return coordinate.x >= 0 && coordinate.x < size.x && coordinate.z >= 0 && coordinate.z < size.z;
    }

    private void CreatePassageInSameRoom(MazeCell cell, MazeCell otherCell, MazeDirection direction)
    {
        MazePassage passage = Instantiate(passagePrefab) as MazePassage;
        passage.Initialize(cell, otherCell, direction, EdgeTypes.Passage);
        passage = Instantiate(passagePrefab) as MazePassage;
        passage.Initialize(otherCell, cell, direction.GetOpposite(), EdgeTypes.Passage);
    }
    
	//My sad attempt to add a entrance hall
	private void AddEntranceHallGround(List<MazeCell> activeCells)
    {
    	int halfX = size.x / 2;
    	int halfZ = size.z / 2;
            {
                activeCells.Add(CreateCell(new IntVector3(halfX -1, 0, halfZ), RoomType.EntranceHall));
                activeCells[0].Initialize(CreateRoom(-1));
                CreateWall(activeCells[0], MazeDirection.North);
                CreatePassage(activeCells[0], MazeDirection.East);
                CreatePassage(activeCells[0], MazeDirection.South);
                CreateWall(activeCells[0], MazeDirection.West);


                activeCells.Add(CreateCell(new IntVector3(halfX, 0, halfZ), RoomType.EntranceHall));
                activeCells[1].Initialize(activeCells[0].room);
                CreateWall(activeCells[1], MazeDirection.North);
                CreateWall(activeCells[1], MazeDirection.East);
                CreatePassage(activeCells[1], MazeDirection.South);
                CreatePassage(activeCells[1], MazeDirection.West);

                activeCells.Add(CreateCell(new IntVector3(halfX - 1, 0, halfZ - 1), RoomType.EntranceHall));
                activeCells[2].Initialize(activeCells[0].room);
                CreatePassage(activeCells[2], MazeDirection.North);
                CreatePassage(activeCells[2], MazeDirection.East);
                CreatePassage(activeCells[2], MazeDirection.South);
                CreatePassage(activeCells[2], MazeDirection.West, true);


                activeCells.Add(CreateCell(new IntVector3(halfX, 0, halfZ - 1), RoomType.EntranceHall));
                activeCells[3].Initialize(activeCells[0].room);
                CreatePassage(activeCells[3], MazeDirection.North);
                CreatePassage(activeCells[3], MazeDirection.East, true);
                CreatePassage(activeCells[3], MazeDirection.South);
                CreatePassage(activeCells[3], MazeDirection.West);

                activeCells.Add(CreateCell(new IntVector3(halfX - 1, 0, halfZ - 2), RoomType.EntranceHall));
                activeCells[4].Initialize(activeCells[0].room);
                CreatePassage(activeCells[4], MazeDirection.North);
                CreatePassage(activeCells[4], MazeDirection.East);
                CreateWall(activeCells[4], MazeDirection.South);
                CreatePassage(activeCells[4], MazeDirection.West, true);


                activeCells.Add(CreateCell(new IntVector3(halfX,0 , halfZ - 2), RoomType.EntranceHall));
                activeCells[5].Initialize(activeCells[0].room);
                CreatePassage(activeCells[5], MazeDirection.North);
                CreatePassage(activeCells[5], MazeDirection.East, true);
                CreateWall(activeCells[5], MazeDirection.South);
                CreatePassage(activeCells[5], MazeDirection.West);

            }
    }

    private void AddEntranceHallUpper(List<MazeCell> activeCells)
    {
        int halfX = size.x / 2;
        int halfZ = size.z / 2;
        {
            activeCells.Add(CreateCell(new IntVector3(halfX - 1, 1, halfZ), RoomType.EntranceHall));
            activeCells[0].Initialize(CreateRoom(-1));
            CreateWall(activeCells[0], MazeDirection.North);
            CreatePassage(activeCells[0], MazeDirection.East);
            CreatePassage(activeCells[0], MazeDirection.South);
            CreatePassage(activeCells[0], MazeDirection.West, true);


            activeCells.Add(CreateCell(new IntVector3(halfX, 1, halfZ), RoomType.EntranceHall));
            activeCells[1].Initialize(activeCells[0].room);
            CreateWall(activeCells[1], MazeDirection.North);
            CreatePassage(activeCells[1], MazeDirection.East, true);
            CreatePassage(activeCells[1], MazeDirection.South);
            CreatePassage(activeCells[1], MazeDirection.West);

            activeCells.Add(CreateCell(new IntVector3(halfX - 1, 1, halfZ - 1), RoomType.EntranceHall));
            activeCells[2].Initialize(activeCells[0].room);
            CreatePassage(activeCells[2], MazeDirection.North);
            CreatePassage(activeCells[2], MazeDirection.East);
            CreatePassage(activeCells[2], MazeDirection.South);
            CreateWall(activeCells[2], MazeDirection.West);

            activeCells.Add(CreateCell(new IntVector3(halfX, 1, halfZ - 1), RoomType.EntranceHall));
            activeCells[3].Initialize(activeCells[0].room);
            CreatePassage(activeCells[3], MazeDirection.North);
            CreateWall(activeCells[3], MazeDirection.East);
            CreatePassage(activeCells[3], MazeDirection.South);
            CreatePassage(activeCells[3], MazeDirection.West);

            activeCells.Add(CreateCell(new IntVector3(halfX - 1, 1, halfZ - 2), RoomType.EntranceHall));
            activeCells[4].Initialize(activeCells[0].room);
            CreatePassage(activeCells[4], MazeDirection.North);
            CreatePassage(activeCells[4], MazeDirection.East);
            CreateWall(activeCells[4], MazeDirection.South);
            CreateWall(activeCells[4], MazeDirection.West);

            activeCells.Add(CreateCell(new IntVector3(halfX, 1, halfZ - 2), RoomType.EntranceHall));
            activeCells[5].Initialize(activeCells[0].room);
            CreatePassage(activeCells[5], MazeDirection.North);
            CreateWall(activeCells[5], MazeDirection.East);
            CreateWall(activeCells[5], MazeDirection.South);
            CreatePassage(activeCells[5], MazeDirection.West);
        }
    }

    private void AddStaircaseDown()
    {
        MazeCell newCell;
        do
        {
            newCell = groundCells[Random.Range(0, size.x), Random.Range(0, size.z)];
        }
        while (newCell.roomType != RoomType.EntranceHall);

        groundCells[newCell.coordinates.x, newCell.coordinates.z].roomType = RoomType.Stairs;
        basementCells[newCell.coordinates.x, newCell.coordinates.z].roomType = RoomType.Stairs;

    }
}