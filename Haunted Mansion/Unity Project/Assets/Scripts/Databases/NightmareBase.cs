using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;
using System.Linq;
using System.Text;
using System.ComponentModel;
using System.Runtime.Serialization;

public class NightmareBase
{

    public static List<NightmareType> Types;
    public static Dictionary<NightmareID, NightmareType> TypesById;
    public static Dictionary<string,NightmareType> TypesByName;
    public static Dictionary<int, NightmareType> TypesByNumber;
    public static List<Nightmare> NightmareList;


    static NightmareBase()
    {
        Types = new List<NightmareType>();
        TypesById = new Dictionary<NightmareID, NightmareType>();
        TypesByName = new Dictionary<string, NightmareType>();
        TypesByNumber = new Dictionary<int, NightmareType>();
        NightmareList = new List<Nightmare>();

        AddNightmare(new NightmareType()
        {
            IDNumber = 0,
            Id = NightmareID.FriendsfortheAges,
            Name = "Friends for the Ages",
            Prefab = Resources.Load("Haunts/friendsfortheages") as GameObject,
        });
    }
    static void AddNightmare(NightmareType NightmareType)
    {
        Types.Add(NightmareType);
        TypesById.Add(NightmareType.Id, NightmareType);
        TypesByName.Add(NightmareType.Name.ToUpperInvariant(), NightmareType);
        TypesByNumber.Add(NightmareType.IDNumber, NightmareType);

        NightmareList.Add(new Nightmare() { Type = NightmareType });
    }

    public static NightmareType Get(string name)
    {
        name = name.ToUpperInvariant();
        if (!TypesByName.ContainsKey(name))
            return null;
        return TypesByName[name];
    }

    public static NightmareType Get(NightmareID id)
    {
        if (!TypesById.ContainsKey(id))
            return null;
        return TypesById[id];
    }

    public static NightmareType Get(int number)
    {
        if (!TypesByNumber.ContainsKey(number))
            return null;
        return TypesByNumber[number];
    }
}
