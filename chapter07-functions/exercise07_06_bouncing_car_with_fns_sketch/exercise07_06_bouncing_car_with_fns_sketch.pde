int globalX = 0;
int globalY = 100;
int speed = 1;

void setup() {
  size(200, 200);
  smooth();
}

void draw() {
  background(0);
  drawCar(globalX, globalY, 40, color(255, 125, 50));
  move();
  bounce();
}

void move() {
  // Change the x location by speed
  globalX = globalX + speed;
}
void bounce() {
  if ((globalX > width) || (globalX < 0)) {
    speed = speed * -1;
  }
}

void drawCar(int x, int y, int thesize, color c) {
  int offset = thesize / 4;
  rectMode(CENTER);
  stroke(200);
  fill(c);
  rect(x, y, thesize, thesize/2);
  fill(200);
  rect(x-offset, y-offset, offset, offset/2);
  rect(x+offset, y-offset, offset, offset/2);
  rect(x-offset, y+offset, offset, offset/2);
  rect(x+offset, y+offset, offset, offset/2);
}