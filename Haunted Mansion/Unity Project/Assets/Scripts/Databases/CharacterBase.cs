using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;
using System.Linq;
using System.Text;
using System.ComponentModel;
using System.Runtime.Serialization;

public class CharacterBase {

	public static List<CharacterType> Types;
	public static Dictionary<CharacterID, CharacterType> TypesById;
	public static Dictionary<string, CharacterType> TypesByName;
    public static Dictionary<int, CharacterType> TypesByNumber;
	public static List<Character> Characters;
    private static int TotalCharacters = 0;


	static CharacterBase()
	{
				Types = new List<CharacterType> ();
				TypesById = new Dictionary<CharacterID, CharacterType> ();
				TypesByName = new Dictionary<string, CharacterType> ();
                TypesByNumber = new Dictionary<int, CharacterType>();
				Characters = new List<Character> ();

		AddCharacter(new CharacterType()
		          {
            IDNumber = 0,
			Id = CharacterID.OldMan,
			Name = "Old Man Jankins",
			Description = "A old man",
			Health = 100.0,
			Sanity = 80,
			Speed = 25,
            Prefab = Resources.Load("Characters/[PH]MaleOld") as GameObject,
            Profile = Resources.Load<Sprite>("CharacterAvatars/bondImage"),
		});

	}
		static void AddCharacter(CharacterType CharacterType)
		{			
			Types.Add(CharacterType);
			TypesById.Add(CharacterType.Id, CharacterType);
			TypesByName.Add(CharacterType.Name.ToUpperInvariant(), CharacterType);
            TypesByNumber.Add(CharacterType.IDNumber, CharacterType);

            Characters.Add(new Character() { Type = CharacterType });

            TotalCharacters++;
		}
		
		public static CharacterType Get(string name)
		{
			name = name.ToUpperInvariant();
			if (!TypesByName.ContainsKey(name))
				return null;
			return TypesByName[name];
		}
		
		public static CharacterType Get(CharacterID id)
		{
			if (!TypesById.ContainsKey(id))
				return null;
			return TypesById[id];
		}

        public static CharacterType Get(int number)
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
