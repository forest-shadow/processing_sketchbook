void setup() {
  size(260, 180);
  smooth(); // enable anti-aliasing
}

void draw() {
  background(255);
  ellipseMode(CENTER);
  
  // body
  stroke(0);
  fill(150);
  rect(mouseX-45, mouseY-15, 90, 30);
  
  // head
  fill(255);
  ellipse(mouseX-65, mouseY, 60, 60);
  // eye
  fill(mouseX, mouseX/5, mouseX/4);
  ellipse(mouseX-65, mouseY-10, 32, 16);
  // smile
  noFill();
  stroke(0);
  arc(mouseX-65, mouseY-2, 48, 48, PI/9, 8*PI/9);
  
  // limbs
  stroke(0);
  // forelimbs
  line(mouseX-24, mouseY-15, mouseX-52, mouseY-54);
  line(mouseX-24, mouseY+15, mouseX-52, mouseY+54);
  // hind limbs
  line(mouseX+44, mouseY-15, mouseX+72, mouseY-54);
  line(mouseX+44, mouseY+15, mouseX+72, mouseY+54);
  // tail
  line(mouseX+34, mouseY, mouseX+72, mouseY);
}
