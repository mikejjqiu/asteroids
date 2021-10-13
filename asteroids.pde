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
  mode = intro;
  imageMode(CENTER);
  rectMode(CENTER);


  myShip = new Ship();
  myObjects = new ArrayList<GameObject>();
  myObjects.add(myShip);

  
  //int i = 0;
  //while (i < 10) {
  //  myObjects.add(new Asteroid());
  //}
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new ufo());

  ship = loadImage("ship.png");

  int k = 0;
  gif = new PImage[16];
  while (k < 16) {
    gif[k] = loadImage("frame_"+k+"_delay-0.01s.gif");
    gif[k].resize(width, height);
    k++;
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
