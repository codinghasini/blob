
class player {

  float x, y;      // player position
  float w, h;      // player size
  int health;      // player's health
  int ball;  // ammo

  PImage character;

  // Constructor
  player() {
    x = 50;
    y = height - 60;

    w = 500;
    h = 500;

    health = 100;
    ball = 100;

    character = loadImage("purple2.png");
    character.resize(555, 555);
  }

  // Draw player image
  void display() {
    imageMode(CENTER);
    image(character, x, y);
  }

  // Move the player
  void move(int x, int y) {
    this.x = x;
    this.y = y;
  }

  // Controls the player's ability to fire
  boolean fire() {
    return ball > 0;
  }
}
