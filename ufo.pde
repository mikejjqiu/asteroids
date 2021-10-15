class ufo extends GameObject {

  PVector dir;


  ufo() {
    lives = 1;
    loc = new PVector(random(0, width), random(0, height));
    v = new PVector(0, 0);
    dir = new PVector(0, 0.1);
  }

  ufo(float x, float y) {
    loc = new PVector (x, y);
  }

  void show() {
    fill(255, 0, 0);
    circle(loc.x, loc.y, 50);
  }


  void act() {
    super.act();

    v.add(dir);
    if (v.mag() > 3) v.setMag(3);
    float dx = myShip.loc.x - loc.x;
    float dy = myShip.loc.y - loc.y;
    
    if (frameCount % 180 == 0) {
      dir.rotate(random(0, PI));
      myObjects.add(new ufoBullet(loc.x, loc.y, dx, dy));
    }
  }
}
