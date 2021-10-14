class ufoBullet extends GameObject {

  int timer;
  PVector dir;
  float vx;
  float vy;

  ufoBullet() {
    lives = 1;
    timer = 30;

    vx = myShip.loc.x - loc.x;
    vy = myShip.loc.y - loc.y;
  }

  ufoBullet(float x, float y, float dx, float dy) {
    lives = 1;
    timer = 30;
    loc = new PVector(x, y);
    //dir = new PVector(dx,dy);
    v = new PVector();
    v.setMag(5);

    vx = dx;
    vy = dy;


    loc.x = loc.x + vx;
    loc.y = loc.y + vy;
  }


  void show() {
    fill(0);
    circle(loc.x, loc.y, 10);
  }

  void act() {
    loc.x = loc.x + vx;
    loc.y = loc.y + vy;
    
    timer--;
    if (timer ==0) {
      lives = 0;
    }
  }
}
