boolean up, down, left, right, space;
Ship myShip;
ArrayList<GameObject> myObjects;

PImage ship;

PImage[] gif;
  int i = 0;

int mode;
final int intro = 0;
final int game = 1;
final int gameover = 2;

void setup() {
  size(800, 800);
  mode = game;
  imageMode(CENTER);
  rectMode(CENTER);
  
  
  myShip = new Ship();
  myObjects = new ArrayList<GameObject>();
  myObjects.add(myShip);
  myObjects.add(new Asteroid());

  ship = loadImage("ship.png");
  
  gif = new PImage[16];
  while (i < 16) {
    gif[i] = loadImage("frame_"+i+"_delay-0.01s.gif");
    i++;
  }
}

void draw() {
  
    if (mode==intro) {
    intro();
  } else if (mode==game) {
    game();
  } else if (mode==gameover) {
    gameover();
  } else {
    println("Error" + mode);
  }



}


void keyPressed() {
  if (keyCode == UP) up = true;
  if (keyCode == DOWN) down = true;
  if (keyCode == LEFT) left = true;
  if (keyCode == RIGHT) right = true;
  if (key ==  ' ') space = true;
}

void keyReleased() {
  if (keyCode == UP) up = false;
  if (keyCode == DOWN) down = false;
  if (keyCode == LEFT) left = false;
  if (keyCode == RIGHT) right = false;
  if (key ==  ' ') space = false;
}
