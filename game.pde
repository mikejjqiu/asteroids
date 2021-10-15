int a = 0;

void game() {
  tint(50);
  image(bg1, width/2, height/2, width, height);
  
  if (a < 3) {
      myObjects.add(new Asteroid());
    a++;
  }


  //if (lives == 0) {
  //    int ii = 600;
  //    while (ii > 0) {
  //      ii = ii - 1;
  //      if (ii <= 0) {
  //        lives = 1;
  //        spawn();
  //      }
  //    }
  //  }


  int i = 0;
  while (i < myObjects.size()) {
    GameObject myObj = myObjects.get(i);
    myObj.show();
    myObj.act();

    if (myObj.lives <= 0) {
      myObjects.remove(i);
    } else {
      i++;
    }
  }
}
