void setup() {
  size(250,250);
  smooth();
}

void draw() {
  stroke(0);
  strokeWeight(abs(mouseX - pmouseX)/4);
  line(pmouseX,pmouseY,mouseX,mouseY);
}
