player axo;
player2 exo;

Ball ball;
Ball2 ball2;

Powerup powerup;

int point1, point2;

void setup() {
  size(600, 600);

  point1 = 0;
  point2 = 0;

  axo = new player();
  exo = new player2();

  ball = null;
  ball2 = null;

  powerup = new Powerup();
}

void draw() {
  background(#FBE4FF);

  infoPanel();

  axo.display();
  exo.display();

  powerup.display();

  if (powerup.touchesPlayer(axo)) {
    axo.health = min(100, axo.health + 30);
    powerup = new Powerup();
  }

  if (powerup.touchesPlayer2(exo)) {
    exo.health = min(100, exo.health + 30);
    powerup = new Powerup();
  }

  if (ball != null) {
    ball.move();
    ball.display();

    if (ball.hitsPlayer(exo)) {
      exo.health -= 10;
      point1 += 10;
      ball = null;
    }
  }

  if (ball2 != null) {
    ball2.move();
    ball2.display();

    if (ball2.hitsPlayer(axo)) {
      axo.health -= 10;
      point2 += 10;
      ball2 = null;
    }
  }
}

void infoPanel() {
  rectMode(CENTER);

  fill(#ACE7FF);
  rect(width/2, 20, width, 40);

  fill(#B28DFF);

  text("Blob1 points : " + point1, 5, 36);
  text("Blob1's health: " + axo.health, 100, 36);

  text("Blob2 points : " + point2, 405, 36);
  text("Blob2's health: " + exo.health, 500, 36);
}

void keyPressed() {

  if (key == 'w' || key == 'W') {
    axo.y -= 20;
  }

  if (key == 's' || key == 'S') {
    axo.y += 20;
  }

  if (key == 'a' || key == 'A') {
    axo.x -= 20;
  }

  if (key == 'd' || key == 'D') {
    axo.x += 20;
  }

  if (key == ' ') {
    ball = new Ball(axo.x, axo.y, 1, 0);
  }

  if (keyCode == UP) {
    exo.y -= 20;
  }

  if (keyCode == DOWN) {
    exo.y += 20;
  }

  if (keyCode == LEFT) {
    exo.x -= 20;
  }

  if (keyCode == RIGHT) {
    exo.x += 20;
  }

  if (key == ENTER || key == RETURN) {
    ball2 = new Ball2(exo.x, exo.y, -1, 0);
  }
}
