int endLegs = 150;
int spacing = 4;
int x = 50;
int y = 80;
int len = 20;

void setup() {
  size(200, 200);
  background(220);
}

void draw() {
  stroke(0);
  while (x <= endLegs) {
    line (x, y, x, y + len);
    x = x + spacing;
  }
}