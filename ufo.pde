class ufo extends GameObject {

  PVector dir;
  float dx; 
  float dy; 

  ufo() {
    lives = 3;
    s = 100;
    loc = new PVector(random(0, width), random(0, height));
    dir = new PVector (0, random(-1*PI, PI));
    dx = myShip.loc.x - loc.x;
    dy = myShip.loc.y - loc.y;
    v = new PVector(0, 0.1);
    v.limit(4);
  }

  ufo(float x, float y, float vx, float vy) {
    loc = new PVector (x, y);
    dx = vx;
    dy = vy;
    v = new PVector(0, 0.1);
    v.limit(4);
  }

  void show() {
    fill(255);
    circle(loc.x, loc.y, s);
    ellipse(loc.x, loc.y + 20, s*1.5, s/2);
  }


  void act() {
    super.act();

      if (frameCount % 300 == 0) {
        v.add(dir);
        dir.rotate(random(0, PI));
        dx = myShip.loc.x - loc.x;
        dy = myShip.loc.y - loc.y;
        myObjects.add(new ufoBullet(loc.x, loc.y, dx, dy));
      }
  }
}
