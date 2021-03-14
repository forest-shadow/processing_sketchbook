float centerX;
float centerY;

float bodyW = 90;
float bodyH = 30;

int eyeR;
int eyeG;
int eyeB;

class Point {
  float x, y;
  Point(float xCoord, float yCoord) {
    x = xCoord;
    y = yCoord;
  }
}

void setup() {
  size(260, 180);
  smooth(); // enable anti-aliasing
  centerX = width*1.5;
  centerY = height/2;
}

void draw() {
  background(245);
  ellipseMode(CENTER);
  rectMode(CENTER);

  Point centerPoint = new Point(centerX, random(height/4, height*3/4));
  
  // body
  stroke(0);
  fill(150);
  rect(centerPoint.x, centerPoint.y, bodyW, bodyH);
  
  // head
  Point headCenterPoint = new Point(centerPoint.x - 70, centerPoint.y);
  fill(255);
  ellipse(headCenterPoint.x, headCenterPoint.y, 60, 60);
  // eye
  eyeR = (int) random(255);
  eyeG = (int) random(255);
  eyeB = (int) random(255);
  fill(eyeR, eyeG, eyeB);
  ellipse(headCenterPoint.x, headCenterPoint.y - 10, 32, 16);
  // smile
  noFill();
  stroke(0);
  arc(headCenterPoint.x, headCenterPoint.y - 2, 48, 48, PI/9, 8*PI/9);
  
  // limbs
  stroke(0);
  // forelimbs
  float forelimbsJointsX = centerPoint.x - 32;
  float forelimb1JointY = centerPoint.y - bodyH/2;
  float forelimb2JointY = centerPoint.y + bodyH/2;
  float forelimbsEndX = forelimbsJointsX - 38;
  float forelimb1EndY = centerPoint.y - 60;
  float forelimb2EndY = centerPoint.y + 60;
  line(forelimbsJointsX, forelimb1JointY, forelimbsEndX, forelimb1EndY);
  line(forelimbsJointsX, forelimb2JointY, forelimbsEndX, forelimb2EndY);
  // hind limbs
  float hindlimbsJointsX = centerPoint.x + bodyW/2;
  float hindlimbsEndX = hindlimbsJointsX + 38;
  line(hindlimbsJointsX, forelimb1JointY, hindlimbsEndX, forelimb1EndY);
  line(hindlimbsJointsX, forelimb2JointY, hindlimbsEndX, forelimb2EndY);
  // tail
  float tailY = centerPoint.y + 15;
  line(hindlimbsJointsX - 10, centerPoint.y, hindlimbsEndX, centerPoint.y);

  centerX--;
}