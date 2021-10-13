class Ship extends GameObject {


  PVector dir;
  int shotTimer, threshold;
  int imtimer = 0;

  Ship() {
    lives = 3;
    loc = new PVector(width/2, height/2);
    v = new PVector(0, 0);
    dir = new PVector(0, -0.2);

    shotTimer = 0;
    threshold = 30;
  }

  void show() {

    pushMatrix();
    translate(loc.x, loc.y);
    rotate(dir.heading()+PI/2);
    noFill();
    image(ship, 0, 0, 60, 60);
    //triangle(-25, -12.5, -25, 12.5, 25, 0); 
    popMatrix();

    fill(255);
    textSize(80);
    text(lives, 80, 80);
  }

  void act() {
    super.act();

    if (v.mag() > 7) {
      v.setMag(7);
    }

    shotTimer++;

    if (up) {
      v.add(dir); 
      myObjects.add(new Fire());
    }
    if (down) v.sub(dir);
    if (left) { 
      dir.rotate(radians(-5));
    }
    if (right) { 
      dir.rotate(radians(5));
    }
    if (space && shotTimer >= threshold) {
      myObjects.add(new Bullet());
      shotTimer = 0;
    }


    imtimer++;
    if (imtimer > 180) {
      int i = 0;
      while (i<myObjects.size()) {

        GameObject myObj = myObjects.get(i);
        if (myObj instanceof Asteroid) {
          if (dist(loc.x, loc.y, myObj.loc.x, myObj.loc.y) < 27 + myObj.s/2) {
            lives = lives - 1;
            imtimer = 0;
          }
        }
        i++;
      }
    }

    if (imtimer < 180) {  
      noFill();
      circle(loc.x, loc.y, 70);
    }
    
    if (lives == 0) mode = gameover;
  }
}
