class ufoBullet extends GameObject {

  int timer;
  
  float y1;
  float x1;

  ufoBullet(float x, float y, float dx, float dy) {
    lives = 1;
    timer = 30;
    loc = new PVector(x,y);
    v = new PVector();
    v.setMag(5);
  } 
  

  void show() {
    
  }

  void act() {
    
  }
}
