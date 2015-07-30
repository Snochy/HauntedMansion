using UnityEngine;
using System.Collections;

public class Character_Movement : MonoBehaviour {
	public float rotateSpeed = 6.0F;
    public float jumpSpeed = 140.0F;
    public float defaultSpeed;

    public double speedMod = 0;

    public Animator anim;

    public double currentSpeed;

    private Vector3 moveDirection;

    void Update() {

        if (Input.GetKey(KeyCode.LeftShift))
            speedMod = defaultSpeed * .5f;
        else speedMod = 0;

        currentSpeed = defaultSpeed + speedMod;
        if (currentSpeed <= 0)
            currentSpeed = 0;

        if (GameObject.FindGameObjectWithTag("GameController").GetComponent<GameManager>().characterControlEnabled)
        {
            CharacterController controller = GetComponent<CharacterController>();
            if (controller.isGrounded)
            {
                float forward;

                if (Input.GetMouseButton(0) && Input.GetMouseButton(1))
                {
                    transform.rotation = Quaternion.Euler(0, Camera.main.transform.eulerAngles.y, 0);
                    forward = 1;
                }
                else forward = Input.GetAxis("Vertical");

                if (Input.GetKey(KeyCode.LeftShift))
                    anim.speed = 1.2f;
                else anim.speed = 1f;

                anim.SetFloat("Speed", forward);

                moveDirection = new Vector3(Input.GetAxis("Horizontal"), 0, forward);
                moveDirection = transform.TransformDirection(moveDirection);
                moveDirection *= (float)currentSpeed;

                if (Input.GetKey(KeyCode.Space))
                {
                    moveDirection.y = jumpSpeed;
                }

            }

            else
            {

                if (moveDirection.y >= 1)
                {
                    moveDirection.y -= jumpSpeed * Time.deltaTime;
                }

                moveDirection.y -= GameObject.FindGameObjectWithTag("GameController").GetComponent<GameManager>().gravity * Time.deltaTime;

            }

            if (Input.GetKey(KeyCode.D))
            {
                transform.Rotate(0, rotateSpeed, 0);

            }
            if (Input.GetKey(KeyCode.A))
            {
                transform.Rotate(0, -rotateSpeed, 0);
            }

            if ((controller.collisionFlags & CollisionFlags.Above) != 0)
            {
                if (moveDirection.y > 0)
                {
                    moveDirection.y = 0;
                }
            }

            if (Input.GetKeyDown(KeyCode.C))
            {
                GameObject.Find("FlashLight").GetComponent<Light>().enabled = !GameObject.Find("FlashLight").GetComponent<Light>().enabled;
                GameObject.FindGameObjectWithTag("SoundEffect").GetComponent<SoundPlayer>().PlayAudio(SoundID.Click);
            }

            controller.Move(moveDirection * Time.deltaTime);
        }
	}
}
