
class player2 {

  float x, y;      // player position
  float w, h;      // player size
  int health;      // player's health
  int spearCount;  // ammo

  PImage character2;

  // Constructor
  player2() {
    x = 530;
    y = height - 60;

    w = 500;
    h = 500;

    health = 100;
    spearCount = 100;

    character2 = loadImage("blue2.png");
    character2.resize(555, 555);
  }

  // Draw player image
  void display() {
    imageMode(CENTER);
    image(character2, x, y);
  }

  // Move the player
  void move(int x, int y) {
    this.x = x;
    this.y = y;
  }

  // Controls the player's ability to fire
  boolean fire() {
    return spearCount > 0;
  }
}
