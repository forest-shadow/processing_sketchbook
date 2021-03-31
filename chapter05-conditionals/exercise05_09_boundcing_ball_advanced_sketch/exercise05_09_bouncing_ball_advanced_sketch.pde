int initialCircleRadius = 16;
int x = 0 + initialCircleRadius;
int y = 0 + initialCircleRadius;
int speedX = 1;
int speedY = 3;
float currentCircleRadius = (float) initialCircleRadius;

void setup() {
  size(200, 200);
  smooth();
}

void draw() {
  background(240);

  currentCircleRadius = constrain(currentCircleRadius, (float) initialCircleRadius, (float) initialCircleRadius * 3);
  x = constrain(x, (int) currentCircleRadius, width - initialCircleRadius);
  y = constrain(y, (int) currentCircleRadius, height - initialCircleRadius);

  x = x + speedX;
  y = y + speedY;

  if ((x > width - currentCircleRadius) || (x < currentCircleRadius)){
    speedX = speedX * -1;
  }

  if ((y > height - currentCircleRadius) || (y < currentCircleRadius)){
    speedY = speedY * -1;
  }

  if(x < width / 2 && speedX > 0 || x > width / 2 && speedX < 0) {
    currentCircleRadius = currentCircleRadius + 0.275;
    fill(x, y,(int) currentCircleRadius);
  } else if (x > width / 2 && speedX > 0 || x < width / 2 && speedX < 0) {
    currentCircleRadius = currentCircleRadius - 0.275;
    fill((int) currentCircleRadius, y, x);
  }

  stroke(0);
  ellipse(x, y, currentCircleRadius * 2, currentCircleRadius * 2);
}