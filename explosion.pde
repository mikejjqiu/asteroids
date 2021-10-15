class explosion extends GameObject {

  int t;

  explosion() {
    s = int(random(1, 3));
    v = new PVector(0,0);
  }

  explosion(float x, float y, int sizeE) {
    lives = 1;
    loc = new PVector (x, y);
    v = new PVector(0,0);
    s = sizeE;
  }

  void show() {
    noStroke();
    fill(random(0, 255), random(0, 20), random(0, 100), t);
    square(loc.x, loc.y, s);
  }

  void act() {
    
    
    super.act();
    t = t-10;
    if (t <= 0) lives = 0;
  }
}
