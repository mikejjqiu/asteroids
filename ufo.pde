class ufo extends GameObject {

  PVector direction;

  ufo() {
    lives = 3;
    loc = new PVector(random(0, width), random(0, height));
    v = new PVector(0, 5);
    direction = new PVector (0, random(-2*PI, 2*PI));
    s = random(40, 90);
    v.setMag(8);
  }

  void show() {
    square(loc.x, loc.y, s);
    rotate(direction.heading());
  }

  void act() {
    if (frameCount % 400 == 0) {
      v.add(direction);
      direction.rotate(radians(5));
    }
  }
}
