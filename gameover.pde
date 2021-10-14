void gameover() {
  background(255, 0, 0);

  if (myShip.lives == 0) {
    text("you lose", width/2, height/2);
  }
  
}
