using UnityEngine;
using System.Collections;

public class PlayerTurntable : MonoBehaviour {

    public Transform target;
    public float xSpeed = 250.0f;
    private float x = 0.0f;
    public float rotationDampening = 3.0f;

	void Update () {

        if (Input.GetMouseButton(0))
            x += Input.GetAxis("Mouse X") * -xSpeed * 0.02f;


        else
        {
            float targetRotationAngle = target.eulerAngles.y;
            float currentRotationAngle = transform.transform.eulerAngles.y;
            x = Mathf.LerpAngle(currentRotationAngle, targetRotationAngle, rotationDampening * Time.deltaTime);
        }

        Quaternion rotation = Quaternion.Euler(0, x, 0);

        transform.rotation = rotation;
	}
}
