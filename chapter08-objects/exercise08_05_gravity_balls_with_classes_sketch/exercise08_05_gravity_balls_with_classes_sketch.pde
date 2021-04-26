Ball ball1;
Ball ball2;

float gravity = 0.1;

class Ball {
  float x;
  float y;
  float speed;
  float w;

  Ball(float _x, float _y, float _w) {
    x = _x;
    y = _y;
    w = _w;
    speed = 0;
  }

  void display() {
    fill(255);
    noStroke();
    ellipseMode(CENTER);
    ellipse(x, y, 10, 10);
  }

  void move() {
    // Add speed to y location
    y = y + speed;
    // Add gravity to speed
    speed = speed + gravity;
  
    // If square reaches the bottom
    // Reverse speed
    if (y > height) {
      speed = speed * -0.95;
    }
  }
  
}

void setup() {
  size(200, 200);
  ball1 = new Ball(50, 0, 16);
  ball2 = new Ball(100, 50, 32);
  smooth();
}

void draw() {
  background(100);

  ball1.display();
  ball2.display();
  ball1.move();
  ball2.move();
}