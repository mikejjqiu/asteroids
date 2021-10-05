class Asteroid extends GameObject {

  Asteroid() {
    lives = 1;
    loc = new PVector (random(0, width), random(0, height));
    v = new PVector (0, 1);
    v.rotate(random(0, TWO_PI));
    s = 100;
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
          myObj.lives = 0;
          lives = 0;
        }
      }
      i++;
    }
  }
}
