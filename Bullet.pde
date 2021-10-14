class Bullet extends GameObject {

  int timer;
  PVector nudge;

  Bullet() {
    lives = 1;
    timer = 30;
    loc = new PVector(myShip.loc.x, myShip.loc.y);
    v = new PVector(myShip.dir.x, myShip.dir.y);
    v.add(myShip.v);
    v.setMag(3);

  } 

  void show() {
    nudge = myShip.dir.copy();
    nudge.setMag(25);
    loc.add(nudge);
    fill(#4AD8D5);
    ellipse(loc.x, loc.y, 5, 3);
  }

  void act() {


    timer--;
    if (timer ==0) {
      lives = 0;
    }
    super.act();
  }
}
