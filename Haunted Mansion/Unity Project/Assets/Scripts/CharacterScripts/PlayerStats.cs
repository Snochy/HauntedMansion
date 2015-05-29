using UnityEngine;
using System.Collections;

public class PlayerStats {

    private static CharacterID playerCharID;
    private static int charNum;

    public static void SetPlayerCharID(CharacterID a)
    {
        playerCharID = a;
        PlayerPrefs.SetInt("charNum", CharacterBase.Get(playerCharID).IDNumber);
    }

    public static CharacterID GetPlayerCharID()
    {
           charNum = PlayerPrefs.GetInt("charNum");
           playerCharID = CharacterBase.Get(charNum).Id;
           return playerCharID;
    }
}
