using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class PlayerStatsHandler : MonoBehaviour {

    public double startingHealth = 0;
    public double currentHealth;
    public double startingSanity = 0;
    public double currentSanity;
    private double speed;
    public Slider healthSlider;
    public Slider sanitySlider;
    public Sprite avatar;
    public Image avatarImage;
    public Text playerText;

	void Awake () 
    {
        healthSlider = GameObject.FindGameObjectWithTag("PlayerHUD").transform.FindChild("HealthSlider").GetComponent<Slider>();
        sanitySlider = GameObject.FindGameObjectWithTag("PlayerHUD").transform.FindChild("SanitySlider").GetComponent<Slider>();
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
        double SliderState = currentHealth / startingHealth;
        GameObject.FindGameObjectWithTag("HealthSlider").GetComponent<Slider>().value = (float)SliderState;
        SliderState = currentSanity / startingSanity;
        GameObject.FindGameObjectWithTag("SanitySlider").GetComponent<Slider>().value = (float)SliderState;

        if (currentHealth <= 0)
            Death();
        if (currentSanity <= 0)
            Death();
    }

    public void TakeDamage(double amount)
    {
        currentHealth -= amount;
        healthSlider.value = (float)currentHealth;
        if (currentHealth <= 0)
            Death();
    }

    public void TakeSanity(double amount)
    {
        currentSanity -= amount;
        sanitySlider.value = (float)currentSanity;
        if (currentSanity <= 0)
            Death();
    }

    private void Death()
    {
        GameObject.FindGameObjectWithTag("GameController").GetComponent<GlobalHauntControllor>().PlayerDeath(this.gameObject);
        GameObject.FindGameObjectWithTag("GameController").GetComponent<GameManager>().characterControlEnabled = false;
    }

}
