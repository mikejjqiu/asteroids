class Ship extends GameObject{

 
  PVector direction;

  Ship() {
    lives = 3;
    loc = new PVector(width/2, height/2);
    v = new PVector(0, 0);
    direction = new PVector(0, -0.1);
  }

  void show() {

    pushMatrix();
    translate(loc.x, loc.y);
    rotate(direction.heading());
    noFill();
    stroke(255,255,255);
    //tint(255,255,255);
    //image(ship, 0,0);
    triangle(-25, -12.5, -25, 12.5, 25, 0); 
    popMatrix();
  }

  void act() {
    super.act();
    if (up) v.add(direction);
    if (down) v.sub(direction);
    if (left) direction.rotate(radians(-1));
    if (right) direction.rotate(radians(1));
    if (space) myObjects.add(new Bullet());

  }
}
