int spacing = 10;
int x = 0;
int y = 0;

void setup() {
  size(200, 200);
  background(245);
}

void draw() {
  while (y < height) {
    line(x, y, width, y);
    y = y + spacing; 
  }
}