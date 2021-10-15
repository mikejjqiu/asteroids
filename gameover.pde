void gameover() {

    fill(255);
  if (myShip.lives == 0) {
    background(255, 0, 0);
    text("you lose", width/2, height/2);
  }

  if (aCount == 7*3) {
      background(0, 255, 0);
    text("congrats, you win", width/2, height/2);
  }
}
