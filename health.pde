class Powerup {

  float x;
  float y;
  float size;
  int amount;

  Powerup() {
    x = random(50, width - 50);
    y = random(70, height - 50);
    size = 30;
    amount = 30;
  }

  void display() {
    fill(#FF4D6D);
    stroke(255);
    strokeWeight(3);
    ellipse(x, y, size, size);
  }

  boolean touchesPlayer(player target) {
    return dist(x, y, target.x, target.y) < 45;
  }

  boolean touchesPlayer2(player2 target) {
    return dist(x, y, target.x, target.y) < 45;
  }
}
