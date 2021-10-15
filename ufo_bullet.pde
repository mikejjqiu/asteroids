class ufoBullet extends GameObject {

  int timer = 60;
  PVector dir;


  ufoBullet() {
    lives = 1;
    v = new PVector(0, 0);
  }

  ufoBullet(float x, float y, float dx, float dy) {
    lives = 1;
    timer = 60;
    loc = new PVector(x, y);
    v = new PVector(dx, dy);
    v.setMag(7);
  }


  void show() {
    fill(255);
    circle(loc.x, loc.y, 10);
  }

  void act() {
    super.act();
    timer--;
    if (timer ==0) {
      lives = 0;
    }
  }
}
