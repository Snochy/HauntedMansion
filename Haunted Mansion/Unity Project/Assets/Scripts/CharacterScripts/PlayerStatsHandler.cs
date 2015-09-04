using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class PlayerStatsHandler : MonoBehaviour {

    public double startingHealth = 0;
    public double currentHealth;
    public double startingSanity = 0;
    public double currentSanity;
    private double speed;
    public Slider sanitySlider;
    public Sprite avatar;
    public Image avatarImage;
    public Text playerText;

	private double lastHealth = 0;
	private double lastSanity = 0;
	
	public delegate void HealthStatsChanges(float health);
	public static event HealthStatsChanges HealthStatsChanged;

	public delegate void SanityStatsChanges(float sanity);
	public static event HealthStatsChanges SanityStatsChanged;

	public delegate void Death(GameObject player);
	public static event Death PlayerDeath;
	
	void Awake () 
    {
        avatarImage = GameObject.FindGameObjectWithTag("PlayerHUD").transform.FindChild("Panel").FindChild("Image").GetComponent<Image>();
        playerText = GameObject.FindGameObjectWithTag("PlayerHUD").transform.FindChild("Name").GetComponent<Text>();
        startingHealth = CharacterBase.Get(PlayerPrefs.GetInt("charNum")).Health;
        currentHealth = startingHealth;
        startingSanity = CharacterBase.Get(PlayerPrefs.GetInt("charNum")).Sanity;
        currentSanity = startingSanity;
        avatar = CharacterBase.Get(PlayerPrefs.GetInt("charNum")).Profile;
        avatarImage.sprite = avatar;
        playerText.text = CharacterBase.Get(PlayerPrefs.GetInt("charNum")).Name;
        speed = CharacterBase.Get(PlayerPrefs.GetInt("charNum")).Speed;

        this.gameObject.GetComponent<Character_Movement>().defaultSpeed = (float)speed;
	}

    void Update()
    {
		if (lastHealth != currentHealth) 
		{
			if(HealthStatsChanged != null)
			{
				float HealthSliderState = (float)(currentHealth / startingHealth);
				HealthStatsChanged(HealthSliderState);
			}
			lastHealth = currentHealth;
		}

		if (lastSanity != currentSanity) 
		{
			if(SanityStatsChanged != null)
			{
				float HealthSliderState = (float)(currentSanity / startingSanity);
				HealthStatsChanged(HealthSliderState);
			}
			lastHealth = currentHealth;
		}
    }

    public void TakeDamage(double amount)
    {
        currentHealth -= amount;
        if (currentHealth <= 0)
            PlayerDeath(this.gameObject);
    }

    public void TakeSanity(double amount)
    {
        currentSanity -= amount;
        sanitySlider.value = (float)currentSanity;
        if (currentSanity <= 0)
            PlayerDeath(this.gameObject);
    }

}
