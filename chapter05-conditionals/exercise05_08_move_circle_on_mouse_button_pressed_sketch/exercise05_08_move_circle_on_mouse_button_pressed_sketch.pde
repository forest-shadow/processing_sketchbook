int circleX = 0;
int circleY = 100;
boolean mouseButtonPressed = false;

void setup() {
	size(200, 200);
	smooth();
}

void draw() {
	background(255);
	stroke(0);

	circleX = constrain(circleX, 0, 200);
	fill(175);
	ellipse(circleX, circleY, 50, 50);

  if (mouseButtonPressed) {
	  circleX = circleX + 1;
  }
}

void mousePressed() {
  mouseButtonPressed = true;
}

void mouseReleased() {
	mouseButtonPressed = false;
}