void setup() {
  size(200, 200);
  background(255);
}

void draw() {} // nothing happens in `draw()` in this example

// whenever a user clicks the mouse
// the code written inside `mousePressed()` is executed
void mousePressed() {
  stroke(0);
  fill(175);
  rectMode(CENTER);
  rect(mouseX, mouseY, 16, 16);
}

// whenever a user pressed a key the code
// written inside `keyPassed()` is executed
void keyPressed() {
  background(255);
}
