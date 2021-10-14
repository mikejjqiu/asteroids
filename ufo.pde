class ufo extends GameObject {

  float dx;
  float dy;
  PVector dir;

  ufo() {
    lives = 1;
    loc = new PVector(random(0, width), random(0, height));
    dx = myShip.loc.x - loc.x;
    dy = myShip.loc.y - loc.y;
    v = new PVector(0, 0);
    dir = new PVector(0, 0.1);
  }

  ufo(float x, float y, float vx, float vy) {
    loc = new PVector (x, y);
    dx = vx;
    dy = vy;
  }

  void show() {
    fill(255, 0, 0);
    circle(loc.x, loc.y, 50);
  }


  void act() {
    super.act();

    v.add(dir);
    if (v.mag() > 3) v.setMag(3);
    myObjects.add(new ufoBullet(loc.x, loc.y, dx, dy));
    if (frameCount % 300 == 0) {
      dir.rotate(random(0, PI));
      
    }
  }
}
