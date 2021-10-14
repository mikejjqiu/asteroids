class explosion extends GameObject {
  
  int t; 

  explosion(int sizeA, float x, float y) {
    lives = 1;
    loc = new PVector (x, y);
    v.rotate(random(0, TWO_PI));
    s = sizeA;
    v.rotate(PI+random(-0.5, 0.5));
    v.setMag(3);
  }


//void show() {
//  noStroke();
//  fill(random(0, 255), random(0, 100), random(0, 255), t);
//  square(loc.x, loc.y, s);
//}

//void act() {
//  super.act();
//  t = t-10;
//  if (t <= 0) lives = 0;
//}
}
