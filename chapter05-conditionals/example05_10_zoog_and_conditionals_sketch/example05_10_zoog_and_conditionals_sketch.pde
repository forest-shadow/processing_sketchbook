float x = 100;
float y = 100;
float w = 60;
float h = 60;
float eyeSize = 16;

// Zoog has variables for speed in the horizontal and vertical direction
float xspeed = 3;
float yspeed = 1;

void setup() {
  size(200,200);
  smooth();
}

void draw() {
  // Change the location of Zoog by speed
  x = x + xspeed;
  y = y + yspeed;

  // An IF statements with a logical OR determines if Zoog has reached
  // either the right or left edges of the screen. When this is true, we
  // multiply the speed by `-1`, reversing Zoog’s direction!
  if ((x > width) || (x < 0)) {
    xspeed = xspeed * -1;
  }

  // Identical logic is applied to the `y` direction as well
  if ((y > height) || (y < 0)) {
    yspeed = yspeed * -1;
  }

  background(0);
  ellipseMode(CENTER);
  rectMode(CENTER);
  noStroke();

  // Draw Zoog's body
  fill(150);
  rect(x, y, w/6, h*2);

  // Draw Zoog's head
  fill(255);
  ellipse(x, y-h/2, w, h);

  // Draw Zoog's eyes
  fill(0);
  ellipse(x-w/3, y-h/2, eyeSize, eyeSize*2);
  ellipse(x+w/3, y-h/2, eyeSize, eyeSize*2);

  // Draw Zoog's legs
  stroke(150);
  line(x-w/12, y+h, x-w/4, y+h+10);
  line(x+w/12, y+h, x+w/4, y+h+10);
}