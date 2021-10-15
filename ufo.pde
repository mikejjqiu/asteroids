class ufo extends GameObject {

  PVector dir;


  ufo() {

    lives = 1;

    spawn();

    v = new PVector(0, 0);
    dir = new PVector(0, 0.1);
  }

  ufo(float x, float y) {
    loc = new PVector (x, y);
  }

  void show() {
    fill(255, 0, 0);

    tint(255, 255, 0);
    image(ufo, loc.x, loc.y);
  }


  void act() {

    super.act();

    v.add(dir);
    if (v.mag() > 5) v.setMag(5);

    float dx = myShip.loc.x - loc.x;
    float dy = myShip.loc.y - loc.y;

    if (frameCount % 181 == 0) {
      dir.rotate(random(0, PI));
      myObjects.add(new ufoBullet(loc.x, loc.y, dx, dy));
    }

    int i = 0;
    while (i<myObjects.size()) {
      GameObject myObj = myObjects.get(i);
      if (myObj instanceof Bullet) {
        if (dist(loc.x, loc.y, myObj.loc.x, myObj.loc.y) < 29) {
          lives = lives - 1;
        }
      }
      i++;
    }
    
  }

  void spawn() {
    int r = int(random(0, 4));
    if (r == 0) loc = new PVector(-50, random(0, height));
    if (r == 1) loc = new PVector(width+50, random(0, height));
    if (r == 2) loc = new PVector(random(0, width), -50);
    if (r == 3) loc = new PVector(random(0, width), height+50);
  }
}
