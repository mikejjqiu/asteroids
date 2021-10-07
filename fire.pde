class Fire extends GameObject {

  int t; //transparency
  PVector nudge;

  Fire() {
    lives = 1;
    s = int(random(1, 10));
    t = 255;
    //loc = new PVector (myShip.loc.x, myShip.loc.y);
    loc = myShip.loc.copy(); //same thing
    
    nudge = myShip.direction.copy();
    nudge.rotate(PI);
    nudge.setMag(25);
    loc.add(nudge);
    v = myShip.direction.copy();
    v.rotate(PI+random(-0.5,0.5));
    v.setMag(3);
    
  }

  void show() {
    noStroke();
    fill(random(0,255),random(0,100),random(0,255),t);
    square(loc.x,loc.y,s);
  } 

  void act() {
    super.act();
    t = t-10;
    if (t <= 0) lives = 0;
  }
}
