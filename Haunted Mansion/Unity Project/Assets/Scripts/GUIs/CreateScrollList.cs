using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using System.Collections.Generic;
using System.Collections;

public class CreateScrollList : MonoBehaviour
{
    public GameObject defaultButton;
    public List<Character> itemList;
    public Transform contentPanel;

    public Button.ButtonClickedEvent thingtoDo;

    void Awake()
    {
        itemList = new List<Character>();

        foreach (var character in CharacterBase.Characters)
                itemList.Add(character);

        PopulateList();
    }

    void PopulateList()
    {
        foreach (var item in itemList)
        {
            GameObject newButton = Instantiate(defaultButton) as GameObject;
            ButtonItem buttonItem = newButton.GetComponent<ButtonItem>();
            buttonItem.NameLabel.text = item.ToString();
            buttonItem.avatar.sprite = item.Type.Profile;
            newButton.transform.SetParent(contentPanel, false);
            
        }
    }
}
