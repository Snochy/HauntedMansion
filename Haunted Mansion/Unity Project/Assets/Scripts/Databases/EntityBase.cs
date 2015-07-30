using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;
using System.Linq;
using System.Text;
using System.ComponentModel;
using System.Runtime.Serialization;

public class EntityBase {

    public static List<EntityType> Types;
    public static Dictionary<EntityID, EntityType> TypesById;
    public static Dictionary<string, EntityType> TypesByName;
    public static Dictionary<int, EntityType> TypesByNumber;
    public static List<Entity> Characters;
    private static int TotalCharacters = 0;


    static EntityBase()
	{
        Types = new List<EntityType>();
        TypesById = new Dictionary<EntityID, EntityType>();
        TypesByName = new Dictionary<string, EntityType>();
        TypesByNumber = new Dictionary<int, EntityType>();
        Characters = new List<Entity>();

        AddCharacter(new EntityType()
		          {
            IDNumber = 0,
            Id = EntityID.Ghost,
			Name = "A Ghost",
			Description = "A ghost",
			Health = 100.0,
			Sanity = 80,
			Speed = 150,
            roamSpeed = 50,
            Prefab = Resources.Load("Entities/ghost") as GameObject,
            willRoam = true,
            willChase = true,
            chaseDistance = 2000f,
            attackSpeed = 0.5f,
            attackPower = 5f,
		});

	}
    static void AddCharacter(EntityType EntityType)
		{			
			Types.Add(EntityType);
			TypesById.Add(EntityType.Id, EntityType);
			TypesByName.Add(EntityType.Name.ToUpperInvariant(), EntityType);
            TypesByNumber.Add(EntityType.IDNumber, EntityType);

            Characters.Add(new Entity() { Type = EntityType });

            TotalCharacters++;
		}

    public static EntityType Get(string name)
		{
			name = name.ToUpperInvariant();
			if (!TypesByName.ContainsKey(name))
				return null;
			return TypesByName[name];
		}

    public static EntityType Get(EntityID id)
		{
			if (!TypesById.ContainsKey(id))
				return null;
			return TypesById[id];
		}

    public static EntityType Get(int number)
        {
            if (!TypesByNumber.ContainsKey(number))
                return null;
            return TypesByNumber[number];
        }

        public static int GetTotalCharacters()
        {
            return TotalCharacters;
        }


	}
