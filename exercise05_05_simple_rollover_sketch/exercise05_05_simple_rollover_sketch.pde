int x = 50;
int y = 50;
int w = 100;
int h = 75;

void setup() {
  size(200,200);
}

void draw() {
  background(0);
  stroke(255);

  if (
    mouseX > x && mouseX < x + w 
    && y < mouseY && mouseY < y + h
  ) {
    fill(160, 0, 120);
  } else {
    fill(240);
  }
  rect(x,y,w,h);
}