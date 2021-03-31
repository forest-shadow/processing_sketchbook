// Rectangle starts at location x
float x = 0;
float maxX = 100; 
float rectW = 20;
float stopX = maxX - rectW/2;

void setup() {
  size(200,200);
}

void draw() {
  background(255);

  // Display object
  fill(0);
  rect(x, 100, rectW, 20);

  // Increment x
  // if (x < stopX) {
  //   x = x + 1;
  // }
  
  // or
  x++;
  x = constrain(x, 0, stopX);
}