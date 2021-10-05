class Bullet extends GameObject {

  int timer;

  Bullet() {
    lives = 1;
    timer = 120;
    loc = new PVector(myShip.loc.x, myShip.loc.y);
    v = new PVector(myShip.direction.x, myShip.direction.y);
    v.setMag(10);

    s = 10;
  } 

  void show() {
    stroke(255);
    noFill();
    ellipse(loc.x, loc.y, s, s);
  }

  void act() {
    super.act();

    timer--;
    if (timer ==0) {
      lives = 0;
    }
  }
}
