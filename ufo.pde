class ufo extends GameObject {

  PVector dir;
  float dx; 
  float dy; 

  ufo() {
    lives = 3;
    loc = new PVector(random(0, width), random(0, height));
    dir = new PVector (0, random(-1*PI, PI));
    dx = myShip.loc.x - loc.x;
    dy = myShip.loc.y - loc.y;
    v = new PVector(0, 0.01);
  }

  ufo(float x, float y, float vx, float vy) {
    loc = new PVector (x, y);
    dx = vx;
    dy = vy;
  }

  void show() {
    fill(255);
    circle(loc.x, loc.y, s);
  }


  void act() {
    super.act();



    if (frameCount % 300 == 0) {
      v.add(dir);
      dir.rotate(random(0, PI));
      myObjects.add(new ufoBullet(loc.x, loc.y, dx, dy));
    }
  }
}
