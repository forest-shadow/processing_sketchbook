int GRID_ITEM_SIZE = 10;
int x = 0;
int y = 0;

void setup() {
  size(200, 200);
  noStroke();
  background(255);
}

void draw() {
  x = constrain(x, 0, width);
  y = constrain(y, 0, height);
  for(x = 0; x < width && y < height; x = x + GRID_ITEM_SIZE) {
    fill(random(255), random(255), random(255), random(255));
    rect(x, y, GRID_ITEM_SIZE, GRID_ITEM_SIZE);

    if(x == (width - GRID_ITEM_SIZE)) {
      x = -GRID_ITEM_SIZE;
      y = y + GRID_ITEM_SIZE;
    }
  }
}

