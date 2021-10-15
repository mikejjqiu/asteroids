class Asteroid extends GameObject {

  Asteroid() {
    lives = 1;
    loc = new PVector(random(0, width), random(0, height));
    v = new PVector (0, 1);
    v.rotate(random(0, TWO_PI));
    s = 100;
  }

  Asteroid(int sizeA, float x, float y) {
    lives = 1;
    loc = new PVector (x, y);
    v = new PVector (0, 1);
    v.rotate(random(0, TWO_PI));
    s = sizeA;
  }

  void show() {
    noFill();
    stroke(255);
    ellipse(loc.x, loc.y, s, s);
  }

  void act() {
    super.act();

    int i = 0;
    while (i<myObjects.size()) {
      GameObject myObj = myObjects.get(i);
      if (myObj instanceof Bullet) {
        if (dist(loc.x, loc.y, myObj.loc.x, myObj.loc.y) < s/2 + myObj.s) {
          if (s > 25) {
            myObjects.add(new Asteroid (s/2, loc.x, loc.y));
            myObjects.add(new Asteroid (s/2, loc.x, loc.y));
            //myObjects.add(new explosion (s, loc.x, loc.y));
            myObj.lives = 0;
            lives = 0;
            aCount = aCount + 1;
          }
          if (s == 25) {
            lives = 0;
            myObj.lives = 0;
            aCount = aCount + 1;
          }
        }
      }
      if (myObj instanceof ufoBullet) {
        if (dist(loc.x, loc.y, myObj.loc.x, myObj.loc.y) < s/2 + 5) {
          if (s > 25) {
            myObjects.add(new Asteroid (s/2, loc.x, loc.y));
            myObjects.add(new Asteroid (s/2, loc.x, loc.y));
            myObj.lives = 0;
            lives = 0;
            aCount = aCount + 1;
          }
          if (s == 25) {
            lives = 0;
            myObj.lives = 0;
            aCount = aCount + 1;
          }
        }
      }
      i++;
    }
    if (aCount == 7*3) mode = gameover;
  }
}
