Snake snake = new Snake(50);

void setup() {
  size(200, 200);
  smooth();
}

class Point {
  int x;
  int y;

  Point(int x, int y) {
    this.x = x;
    this.y = y;
  }
}

class Snake {
  Point[] points;
  int size;

  Snake(int _size) {
    size = _size;
    points = new Point[size];
    for (int i = 0; i < size; i++) {
      points[i] = new Point(0, 0); 
    }
  }

  void shiftPoints() {
    for (int i = 0; i < size - 1; i++) {
      points[i] = points[i + 1]; 
    }
  }

  void addPointLocation(int mouseX, int mouseY) {
    points[points.length - 1] = new Point(mouseX, mouseY);
  }

  void draw(int mouseX, int mouseY) {
    shiftPoints();
    addPointLocation(mouseX, mouseY);

    for (int i = 0; i < size; i++) {
      noStroke();
      fill(255 - i * 5);
      
      Point currentPoint = points[i];
      ellipse(currentPoint.x, currentPoint.y, i, i);
    }
  }
}

void draw() {
  background(255);

  snake.draw(mouseX, mouseY);
}