class ufoBullet extends GameObject {

  int timer = 30;
  PVector dir;
  

  ufoBullet() {
    lives = 1;
    v = new PVector(0, 0);
  }

  ufoBullet(float x, float y, float dx, float dy) {
    lives = 1;
    timer = 30;
    loc = new PVector(x, y);
    //dir = new PVector(dx,dy);
    
    v = new PVector(dx, dy);
    v.setMag(10);

  //   ship = new PVector(myShip.loc.x, myShip.loc.y);
  //  PVector dir = PVector.sub(loc, ship);
  }


  void show() {
    fill(255);
    circle(loc.x, loc.y, 10);
  }

  void act() {

   super.act();

    timer--;
    if (timer ==0) {
      lives = 0;
    }
  }
}
