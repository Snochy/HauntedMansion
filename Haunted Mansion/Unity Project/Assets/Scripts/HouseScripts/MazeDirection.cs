using UnityEngine;

//A list of directions
public enum MazeDirection
{
    North,
    East,
    South,
    West
}

public static class MazeDirections
{
	//Keep count of the number of enums in the list
    public const int Count = 4;

	//Get a random value
    public static MazeDirection RandomValue
    {
        get
        {
            return (MazeDirection)Random.Range(0, Count);
        }
    }

	//A list of vector2 that relate to directions
    private static IntVector2[] vectors = {
		new IntVector2(0, 1),
		new IntVector2(1, 0),
		new IntVector2(0, -1),
		new IntVector2(-1, 0)
	};

	//A list of the opposites of the current directions
    private static MazeDirection[] opposites = {
		MazeDirection.South,
		MazeDirection.West,
		MazeDirection.North,
		MazeDirection.East
	};

	//Recieve the opposites of a direction based on direction that is recieve
    public static MazeDirection GetOpposite(this MazeDirection direction)
    {
        return opposites[(int)direction];
    }

	//Turns direction into a Vector 2 int
    public static IntVector2 ToIntVector2(this MazeDirection direction)
    {
        return vectors[(int)direction];
    }

	//What the rotation value is for the direction
    private static Quaternion[] rotations = {
		Quaternion.identity,
		Quaternion.Euler(0f, 90f, 0f),
		Quaternion.Euler(0f, 180f, 0f),
		Quaternion.Euler(0f, 270f, 0f)
	};

	//Method used to rotate edges into position
    public static Quaternion ToRotation(this MazeDirection direction)
    {
        return rotations[(int)direction];
    }

}

