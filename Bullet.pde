class Bullet extends GameObject {

  int timer;
  PVector nudge;

  Bullet() {
    lives = 1;
    timer = 30;
    loc = new PVector(myShip.loc.x, myShip.loc.y);
    v = new PVector(myShip.direction.x, myShip.direction.y);
    v.add(myShip.v);
    v.setMag(5);
  } 

  void show() {
    nudge = myShip.direction.copy();
    nudge.setMag(25);
    loc.add(nudge);
    fill(#4AD8D5);
    ellipse(loc.x, loc.y, 2, 10);
  }

  void act() {


    timer--;
    if (timer ==0) {
      lives = 0;
    }
    super.act();
  }
}
