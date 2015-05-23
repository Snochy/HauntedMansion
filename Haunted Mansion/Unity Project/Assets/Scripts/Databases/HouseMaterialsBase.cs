using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;
using System.Linq;
using System.Text;
using System.ComponentModel;
using System.Runtime.Serialization;

public class HouseMaterialsBase
{

    public static List<HouseMaterialsType> Types;
    public static Dictionary<HouseMaterialsID, HouseMaterialsType> TypesById;
    public static Dictionary<string, HouseMaterialsType> TypesByName;
    public static Dictionary<int, HouseMaterialsType> TypesByNumber;
    public static List<HouseMaterials> HouseMaterialsList;


    static HouseMaterialsBase()
    {
        Types = new List<HouseMaterialsType>();
        TypesById = new Dictionary<HouseMaterialsID, HouseMaterialsType>();
        TypesByName = new Dictionary<string, HouseMaterialsType>();
        TypesByNumber = new Dictionary<int, HouseMaterialsType>();
        HouseMaterialsList = new List<HouseMaterials>();

        AddCharacter(new HouseMaterialsType()
        {
            IDNumber = 0,
            Id = HouseMaterialsID.Standard_a01,
            Name = "Standard Material A",
            Materials = new MazeRoomSettings(Resources.Load("Materials/FloorMaterial_a01") as Material, Resources.Load("Materials/WallPaper01") as Material),
        });

        AddCharacter(new HouseMaterialsType()
        {
            IDNumber = 1,
            Id = HouseMaterialsID.Standard_b01,
            Name = "Standard Material B",
            Materials = new MazeRoomSettings(Resources.Load("Materials/FloorMaterial_b01") as Material, Resources.Load("Materials/WallPaper02") as Material),
        });

        AddCharacter(new HouseMaterialsType()
        {
            IDNumber = 2,
            Id = HouseMaterialsID.Standard_c01,
            Name = "Standard Material C",
            Materials = new MazeRoomSettings(Resources.Load("Materials/FloorMaterial_c01") as Material, Resources.Load("Materials/WallPaper03") as Material),
        });

        AddCharacter(new HouseMaterialsType()
        {
            IDNumber = 3,
            Id = HouseMaterialsID.Standard_d01,
            Name = "Standard Material D",
            Materials = new MazeRoomSettings(Resources.Load("Materials/FloorMaterial_d01") as Material, Resources.Load("Materials/WallPaper04") as Material),
        });
    }
    static void AddCharacter(HouseMaterialsType HouseMaterialsType)
    {
        Types.Add(HouseMaterialsType);
        TypesById.Add(HouseMaterialsType.Id, HouseMaterialsType);
        TypesByName.Add(HouseMaterialsType.Name.ToUpperInvariant(), HouseMaterialsType);
        TypesByNumber.Add(HouseMaterialsType.IDNumber, HouseMaterialsType);

        HouseMaterialsList.Add(new HouseMaterials() { Type = HouseMaterialsType });
    }

    public static HouseMaterialsType Get(string name)
    {
        name = name.ToUpperInvariant();
        if (!TypesByName.ContainsKey(name))
            return null;
        return TypesByName[name];
    }

    public static HouseMaterialsType Get(HouseMaterialsID id)
    {
        if (!TypesById.ContainsKey(id))
            return null;
        return TypesById[id];
    }

    public static HouseMaterialsType Get(int number)
    {
        if (!TypesByNumber.ContainsKey(number))
            return null;
        return TypesByNumber[number];
    }
}
