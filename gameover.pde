void gameover() {

  noTint();
  if (myShip.lives == 0) {
    image(lose, width/2, height/2, 1300, 800);
  }

  if (aCount == 30) {
    background(0);
    image(win, width/2, height/2);
  }
}
