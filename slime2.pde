class Ball2 {

  float x;
  float y;
  float speed;
  float dx;
  float dy;

  PImage slime;

  Ball2(float x, float y, float dx, float dy) {
    this.x = x;
    this.y = y;
    this.dx = dx;
    this.dy = dy;

    speed = 10;

    slime = loadImage("ball.png");

    if (slime != null) {
      slime.resize(90, 90);
    }
  }

  void display() {
    if (slime != null) {
      imageMode(CENTER);
      image(slime, x, y);
    }
  }

  void move() {
    x += dx * speed;
    y += dy * speed;
  }

  boolean hitsPlayer(player target) {
    return dist(x, y, target.x, target.y) < 70;
  }
}
