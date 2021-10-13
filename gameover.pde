void gameover() {
  background(255, 0, 0);

  if (myShip.lives == 0) {
    text("you are done", width/2, height/2);
  }
  
}
