class Ship extends GameObject {


  PVector direction;
  int shotTimer, threshold;

  Ship() {
    lives = 3;
    loc = new PVector(width/2, height/2);
    v = new PVector(0, 0);
    direction = new PVector(0, -0.2);

    shotTimer = 0;
    threshold = 50;
  }

  void show() {

    pushMatrix();
    translate(loc.x, loc.y);
    rotate(direction.heading()+PI/2);
    noFill();
    image(ship, 0, 0, 60, 60);
    //triangle(-25, -12.5, -25, 12.5, 25, 0); 
    popMatrix();
  }

  void act() {
    super.act();

    if (v.mag() > 7) {
      v.setMag(7);
    }

    shotTimer++;

    if (up) {
      v.add(direction); 
      myObjects.add(new Fire());
    }
    if (down) v.sub(direction);
    if (left) { 
      direction.rotate(radians(-5));
    }
    if (right) { 
      direction.rotate(radians(5));
    }
    if (space && shotTimer > threshold) {
      myObjects.add(new Bullet());
      shotTimer = 0;
    }
  }
}
