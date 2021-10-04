class Ship {

  int lives;

  PVector loc;
  PVector v;
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
    stroke(255);
    triangle(-25, -12.5, -25, 12.5, 25, 0); 
    popMatrix();
  }

  void act() {
    loc.add(v);

    if (up) v.add(direction);
    if (down) v.sub(direction);
    if (left) direction.rotate(radians(-1));
    if (right) direction.rotate(radians(1));
    if (space) myBullets.add(new Bullet());

    if (loc.y < -50) loc.y = height + 50;
    if (loc.y > height + 50) loc.y = -50;
    if (loc.x < -50) loc.x = width + 50;
    if (loc.x > width + 50) loc.x = -50;
  }
}
