class ufo extends GameObject {

  PVector direction;
  float y1;
  float x1;

  ufo() {
    lives = 3;
    loc = new PVector(random(0, width), random(0, height));
    v = new PVector(0, 1);
    direction = new PVector (0, random(-1*PI, PI));
    s = 30;
    v.setMag(8);
  }

  ufo(float x, float y, int sizeU) {
    loc = new PVector (x, y);
    v = new PVector (0, 1);
    v.rotate(3);
    s = sizeU;
  }

  void show() {
    square(loc.x, loc.y, s);
  }


  void act() {
    super.act();
    
    myObjects.add(new ufoBullet(loc.x, loc.y, direction.x, direction.y));

    if (frameCount % 800 == 0) {
      v.add(direction);
      direction.rotate(random(0, PI));
      myObjects.add(new ufoBullet(loc.x,loc.y, /*x1,y1*/));
    }

  }
}
