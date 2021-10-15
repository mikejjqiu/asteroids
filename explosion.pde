class explosion extends GameObject {

  int t;

  explosion() {
    s = 5;
    v = new PVector(0, 0);
    t = 255;
  }

  explosion(float x, float y, int sizeE) {
    lives = 1;
    loc = new PVector (x, y);
    v = new PVector (0, 2);
    v.rotate(random(0, TWO_PI));
    s = sizeE;
  }

  void show() {
    noStroke();
    fill(255, 0, 0, t);
    square(loc.x,loc.y, 10);
  }

  void act() {


    super.act();
    //t = t-1;
    //if (t <= 0) lives = 0;
  }
}
