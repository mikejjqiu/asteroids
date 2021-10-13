class ufoBullet extends GameObject {

  int timer;
  PVector dir;
  float dx; 
  float dy; 

  ufoBullet() {

    dx = myShip.loc.x - loc.x;
    dy = myShip.loc.y - loc.y;
    lives = 1;
    timer = 30;
    v = new PVector(0, 5);
    v.setMag(5);
  }

  ufoBullet(float x, float y, float vx, float vy) {
    lives = 1;
    timer = 30;
    loc = new PVector(x, y);
    //dir = new PVector(dx,dy);
    v = new PVector();
    v.setMag(5);

    dx = vx;
    dy = vy;
  } 


  void show() {
    fill(0);
    circle(loc.x, loc.y, 10);
  }

  void act() {
    super.act();

    loc.x = loc.x+dx;
    loc.y=loc.y+dy;

    timer--;
    if (timer ==0) {
      lives = 0;
    }
  }
}
