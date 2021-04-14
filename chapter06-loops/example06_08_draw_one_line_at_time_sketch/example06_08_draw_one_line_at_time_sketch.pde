int y = 0;

void setup() {
  size(200,200);
  background(0);
  frameRate(5);
}

void draw() {
  // Draw a line
  stroke(255);
  line(0,y,width,y);
  
  // Increment y
  y += 10;
}