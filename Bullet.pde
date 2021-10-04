class Bullet {

  int lives;
  PVector loc;
  PVector v;

  Bullet() {
    lives = 1;
    loc = new PVector(myShip.loc.x, myShip.loc.y);
    v = new PVector(myShip.direction.x, myShip.direction.y);
    v.setMag(10);
}

  void show() {
    stroke(255);
    noFill();
    ellipse(loc.x, loc.y, 10, 10);
  }

  void act() {
    loc.add(v);
  }
}
