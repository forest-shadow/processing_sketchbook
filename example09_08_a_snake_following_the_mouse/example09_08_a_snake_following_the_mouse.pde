// x and y positions
int[] xpos = new int[50];
int[] ypos = new int[50];

void setup() {
  size(200, 200);
  smooth();

  // Initialize all elements of each array to zero
  for (int i = 0; i < xpos.length; i++) {
    xpos[i] = 0;
    ypos[i] = 0;
  }
}

void draw() {
  background(255);

  // Shift all array's elements down one spot
  //  Stop on second to last element
  for (int i = 0; i < xpos.length - 1; i++) {
    xpos[i] = xpos[i + 1];
    ypos[i] = ypos[i + 1];
  }

  // New location
  //  Update the last spot in the array with the mouse location
  xpos[xpos.length - 1] = mouseX;
  ypos[ypos.length - 1] = mouseY;

  // Draw everything
  for (int i = 0; i < xpos.length; i++) {
    noStroke();
    fill(255 - i * 5);
    
    // Draw an ellipse for each element in the arrays.
    //  Color and size are tied to the loop’s counter: `i`.
    ellipse(xpos[i], ypos[i], i, i);
  }
}