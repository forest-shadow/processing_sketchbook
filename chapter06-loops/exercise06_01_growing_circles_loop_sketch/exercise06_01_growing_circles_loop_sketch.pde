int diameter;
int circleCount = 0;
int maxCircleCount = 10;
int COLOR_STEP = 25;

void setup() {
  size(200, 200);
  ellipseMode(CENTER);
  diameter = width;
}

void draw() {
  while(diameter >= 5 && circleCount < maxCircleCount) {
    fill(250 - circleCount * COLOR_STEP);
    ellipse(width/2, height/2, diameter, diameter);
    diameter = diameter - 20;
    circleCount++;
    println(circleCount);
  }
}