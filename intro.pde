void intro() {

  image(gif[i], width/2, height/2);
  if (frameCount % 5 == 0) i++;
  if (i == 16) i = 0;

 if (mousePressed) mode = game;
 
 textSize(40);
 text("click anywhere to start",width/2, 600);
 
//  fill(255);
//  rect(width/2, 3*height/4, width/4, height/5);
//  if (mousePressed) {
//    if (mouseX > width/2 - width/4 && mouseX < width/2 + width/4) {
//      if (mouseY > 3*height/4 - height/5 && mouseY < 3*height/4 + height/5) {
//        stroke(255, 0, 0);
//        mode = game;
//      } else {
//        stroke(0);
//      }
//    }
//  }
}
