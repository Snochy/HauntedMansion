using UnityEngine;
using System.Collections;

public class CursorControllor : MonoBehaviour
{
    public Texture2D defaultCursor;
    public Texture2D pickUpCursor;
    public Texture2D greyedOutCursor;
    public Texture2D cogCursor;
    public Texture2D grayedCogCursor;

    public CursorMode cursorMode = CursorMode.Auto;
    private Vector2 hotSpot = Vector2.zero;

    public LayerMask playerMask;

    void Start()
    {
        Cursor.SetCursor(defaultCursor, hotSpot, cursorMode);
    }
    void Update()
    {
        if (Camera.main != null)
        {
        RaycastHit hit;
        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        if (Physics.Raycast(ray, out hit, Mathf.Infinity, playerMask))
            {
                if (hit.collider.gameObject.tag == "PickUp")
                {
                    if(hit.collider.gameObject.GetComponent<PropController>().withinPickUpRange)
                        Cursor.SetCursor(pickUpCursor, hotSpot, cursorMode);
                    else Cursor.SetCursor(greyedOutCursor, hotSpot, cursorMode);
                }
                else if (hit.collider.gameObject.tag == "Door")
                {
                    if (hit.collider.gameObject.GetComponent<DoorScript>().canBeOpenned)
                        Cursor.SetCursor(cogCursor, hotSpot, cursorMode);
                    else Cursor.SetCursor(grayedCogCursor, hotSpot, cursorMode);
                }

                else Cursor.SetCursor(defaultCursor, hotSpot, cursorMode);
            }
        }
        else Cursor.SetCursor(defaultCursor, hotSpot, cursorMode);
    }
}
