// An array of stripes
Stripe[] stripes = new Stripe[10];

void setup() {
  size(200,200);

  // Initialize all "stripes"
  for (int i = 0; i < stripes.length; i++) {
    stripes[i] = new Stripe();
  }
}

void draw() {
  background(100);

  // Move and display all "stripes"
  for (int i = 0; i < stripes.length; i++) {
    // Check if mouse is over the Stripe
    stripes[i].rollover(mouseX,mouseY);
    stripes[i].move();
    stripes[i].display();
  }
}

class Stripe {
  float x; // horizontal location of stripe
  float speed; // speed of stripe
  float w; // width of stripe
  boolean isHovered; // state of stripe

  Stripe() {
    x = 0; // All stripes start at 0
    speed = random(1); // All stripes have a random positive speed
    w = random(10,30);
    isHovered = false;
  }

  // Draw stripe
  void display() {
    if (isHovered) {
      fill(255);
    } else {
      fill(255,100);
    }

    noStroke();
    rect(x, 0, w, height);
  }

  // Move stripe
  void move() {
    x += speed;
    if (x > width + 20) x = -20;
  }

  // Check if point is inside of Stripe
  void rollover(int mx, int my) {
    // Left edge is x, Right edge is x+w
    if (mx > x && mx < x + w) {
      isHovered = true;
    } else {
      isHovered = false;
    }
  }
}