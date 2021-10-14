int a = 0;

void game() {
  background(0);
  println(myObjects.size());
  if (a < 0) {
    myObjects.add(new Asteroid());
    a++;
  }


  //int i = 0;
  //while (i<myObjects.size()) {
  //  GameObject myObj = myObjects.get(i);
  //  if (myObj instanceof ufo) {
  //    if ( 0) myObjects.add(new ufo());
  //  }
  //}


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
