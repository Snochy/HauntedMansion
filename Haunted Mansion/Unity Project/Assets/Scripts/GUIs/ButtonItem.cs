using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class ButtonItem : MonoBehaviour {

    public Button button;
    public Text NameLabel;
    public Image avatar;
    public GameObject avatarIcon;
    public CharacterID id;

    private Button buttonComponent;

    void Start()
    {
        buttonComponent = gameObject.GetComponent<Button>();
        button.onClick.AddListener(delegate { SendID(id); });
    }

    private void SendID(CharacterID id)
    {
        GameObject.Find("GuiHandler").GetComponent<GUI_Handler>().SetCharacter(id);
    }

}
