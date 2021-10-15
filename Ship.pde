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
    noTint();
    image(ship, 0, 0, 60, 60);
    popMatrix();

    hp(90, 40);
  }

  void act() {
    super.act();

    v.limit(3);//if (v.mag() > 4) {
    //  v.setMag(4);
    //}

    shotTimer++;

    if (up) {
      v.add(dir);
      myObjects.add(new Fire());
    }
    if (down) v.sub(dir);
    if (left) {
      dir.rotate(radians(-3));
    }
    if (right) {
      dir.rotate(radians(3));
    }
    if (space && shotTimer >= threshold) {
      myObjects.add(new Bullet());
      //shotTimer = 0;
    }


    //immunity
    imtimer++;
    if (imtimer > 180) {
      collision();
    }
    if (imtimer < 180) {
      noFill();
      strokeWeight(2);
      stroke(#974AAF);
      circle(loc.x, loc.y, 70);
    }

    if (lives == 0) mode = gameover;
  }


  //functions
  void collision() {
    int i = 0;
    while (i<myObjects.size()) {
      GameObject myObj = myObjects.get(i);
      if (myObj instanceof Asteroid) {
        if (dist(loc.x, loc.y, myObj.loc.x, myObj.loc.y) < 27 + myObj.s/2) {
          lives = lives - 1;
          imtimer = 0;
        }
      }
      if (myObj instanceof ufoBullet) {
        if (dist(loc.x, loc.y, myObj.loc.x, myObj.loc.y) < 32) {
          lives = lives - 1;
          imtimer = 0;
          myObj.lives = 0;
        }
      }
      i++;
    }
  }

  void hp(int x, int y) {
    if (lives == 3) {
      image(hp, x-50, y);
      image(hp, x, y);
      image(hp, x+50, y);
    }
    if (lives == 2) {
      image(hp, x-50, y);
      image(hp, x, y);
    }
    if (lives == 1) {
      image(hp, x-50, y);
    }
  }
}
