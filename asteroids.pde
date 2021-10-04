boolean up, down, left, right, space;
Ship myShip;
ArrayList<Bullet> myBullets;

void setup() {
  size(800, 800);
  imageMode(CENTER);
  myShip = new Ship();
  myBullets = new ArrayList<Bullet>();
}

void draw() {
  background(0);
  myShip.show();
  myShip.act();

  int i = 0;
  while (i<myBullets.size()) {
  Bullet b = myBullets.get(i);
  b.show();
  b.act();
  i++;
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
