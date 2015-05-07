using UnityEngine;
using System.Collections;

public class Character_Movement : MonoBehaviour {
	public float rotateSpeed = 6.0F;
    public float jumpSpeed = 140.0F;
	public float gravity = 140.0F;
	public float defaultSpeed = 30.0F;

    public Animator anim;
		
    public float speed = 0.0F;

	private bool moving = false;

	void start ()
	{
		speed = defaultSpeed;
	}

    private Vector3 moveDirection;

    void Update() {
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

            anim.SetFloat("Speed", forward);

            moveDirection = new Vector3(Input.GetAxis("Horizontal"), 0, forward);
            moveDirection = transform.TransformDirection(moveDirection);
            moveDirection *= speed;
			
            if (Input.GetKey(KeyCode.Space))
			{
                moveDirection.y = jumpSpeed; 
			}
						
        }
		
		else 
		{
			
			if(moveDirection.y >= 1)
			{
	          moveDirection.y -= jumpSpeed * Time.deltaTime;
			}
			
			moveDirection.y -= gravity * Time.deltaTime;
						
    	}
		
		if(Input.GetKey(KeyCode.D))
		{
			transform.Rotate(0, rotateSpeed, 0);

		}
		if(Input.GetKey(KeyCode.A))
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

		if(Input.GetKeyDown(KeyCode.C))
			GameObject.Find("FlashLight").GetComponent<Light>().enabled = !GameObject.Find("FlashLight").GetComponent<Light>().enabled;
		
		controller.Move(moveDirection * Time.deltaTime);

		if(moveDirection.x > 0 || moveDirection.z > 0)
			PlayAudio("step");
		else PlayAudio("stopStep");
		
	}

	public void PlayAudio(string a)
	{
		GameObject.Find("SoundHandler").GetComponent<SoundPlayer>().PlayAudio(a);
	}
}
