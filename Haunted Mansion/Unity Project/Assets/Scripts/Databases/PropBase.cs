using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;
using System.Linq;
using System.Text;
using System.ComponentModel;
using System.Runtime.Serialization;

public class PropBase
{

    public static List<PropType> Types;
    public static Dictionary<PropID, PropType> TypesById;
    public static Dictionary<string, PropType> TypesByName;
    public static Dictionary<int, PropType> TypesByNumber;
    public static List<Prop> PropListSpawnables;
    public static List<Prop> PropListWallDecor;
    public static List<Prop> PropListFloorDecor;


    static PropBase()
    {
        Types = new List<PropType>();
        TypesById = new Dictionary<PropID, PropType>();
        TypesByName = new Dictionary<string, PropType>();
        TypesByNumber = new Dictionary<int, PropType>();
        PropListSpawnables = new List<Prop>();
        PropListWallDecor = new List<Prop>();
        PropListFloorDecor = new List<Prop>();

        AddProp(new PropType()
        {
            IDNumber = 0,
            Id = PropID.Chair,
            Name = "Chair",
            Prefab = Resources.Load("Props/ChairPrefab01") as GameObject,
            isSpawnable = true,
        });

        AddProp(new PropType()
        {
            IDNumber = 1,
            Id = PropID.Window,
            Name = "Window",
            Prefab = Resources.Load("Props/Window01") as GameObject,
            isNotBasement = true,
            isWallDecor = true,
        });

        AddProp(new PropType()
        {
            IDNumber = 2,
            Id = PropID.Painting,
            Name = "Painting",
            Prefab = Resources.Load("Props/painting") as GameObject,
            isWallDecor = true,
        });

        AddProp(new PropType()
        {
            IDNumber = 3,
            Id = PropID.Cabinet,
            Name = "Cabinet",
            Prefab = Resources.Load("Props/CabinetPrefab01") as GameObject,
            isSpawnable = true,
        });

        AddProp(new PropType()
        {
            IDNumber = 4,
            Id = PropID.Chest,
            Name = "Chest",
            Prefab = Resources.Load("Props/ChestPrefab01") as GameObject,
            isSpawnable = true,
        });

        AddProp(new PropType()
        {
            IDNumber = 5,
            Id = PropID.Clock,
            Name = "Clock",
            Prefab = Resources.Load("Props/ClockPrefab01") as GameObject,
            isSpawnable = true,
        });

        AddProp(new PropType()
        {
            IDNumber = 6,
            Id = PropID.Dresser,
            Name = "Dresser",
            Prefab = Resources.Load("Props/Dresser01") as GameObject,
            isSpawnable = true,
        });

        AddProp(new PropType()
        {
            IDNumber = 7,
            Id = PropID.Trash,
            Name = "Pile of Trash",
            Prefab = Resources.Load("Props/PileOfTrashPrefab01") as GameObject,
            isSpawnable = true,
        });

        AddProp(new PropType()
        {
            IDNumber = 8,
            Id = PropID.ExpreimentTable,
            Name = "Table with knifes",
            Prefab = Resources.Load("Props/KnifeTablePrefab01") as GameObject,
            isSpawnable = true,
        });

        AddProp(new PropType()
        {
            IDNumber = 9,
            Id = PropID.Safe,
            Name = "A safe",
            Prefab = Resources.Load("Props/SafePrefab01") as GameObject,
            isSpawnable = true,
        });

        AddProp(new PropType()
        {
            IDNumber = 10,
            Id = PropID.SmallBench,
            Name = "A small bench",
            Prefab = Resources.Load("Props/SkinnyTablePrefab01") as GameObject,
            isSpawnable = true,
        });

        AddProp(new PropType()
        {
            IDNumber = 11,
            Id = PropID.Statue,
            Name = "A bird statue",
            Prefab = Resources.Load("Props/Statue") as GameObject,
            isSpawnable = true,
        });

        AddProp(new PropType()
        {
            IDNumber = 12,
            Id = PropID.DemonTable,
            Name = "A demonic table",
            Prefab = Resources.Load("Props/TablePrefab01") as GameObject,
            isSpawnable = true,
        });

        AddProp(new PropType()
        {
            IDNumber = 13,
            Id = PropID.TeddyBear,
            Name = "A teddy bear",
            Prefab = Resources.Load("Props/TeddyBear01") as GameObject,
        });

        AddProp(new PropType()
        {
            IDNumber = 14,
            Id = PropID.Door,
            Name = "A door",
            Prefab = Resources.Load("Props/Door01") as GameObject,
        });

        AddProp(new PropType()
        {
            IDNumber = 15,
            Id = PropID.Candle,
            Name = "A Candle",
            Prefab = Resources.Load("Props/candlePrefab01") as GameObject,
        });

        AddProp(new PropType()
        {
            IDNumber = 16,
            Id = PropID.Book,
            Name = "A book",
            Prefab = Resources.Load("Props/BookPrefab01") as GameObject,
        });
    }
    static void AddProp(PropType PropType)
    {
        Types.Add(PropType);
        TypesById.Add(PropType.Id, PropType);
        TypesByName.Add(PropType.Name.ToUpperInvariant(), PropType);
        TypesByNumber.Add(PropType.IDNumber, PropType);

        if(PropType.isSpawnable)
            PropListSpawnables.Add(new Prop() { Type = PropType });
        if (PropType.isWallDecor)
            PropListWallDecor.Add(new Prop() { Type = PropType });
        if (PropType.isFloorDecor)
            PropListFloorDecor.Add(new Prop() { Type = PropType });
    }

    public static PropType Get(string name)
    {
        name = name.ToUpperInvariant();
        if (!TypesByName.ContainsKey(name))
            return null;
        return TypesByName[name];
    }

    public static PropType Get(PropID id)
    {
        if (!TypesById.ContainsKey(id))
            return null;
        return TypesById[id];
    }

    public static PropType Get(int number)
    {
        if (!TypesByNumber.ContainsKey(number))
            return null;
        return TypesByNumber[number];
    }
}
