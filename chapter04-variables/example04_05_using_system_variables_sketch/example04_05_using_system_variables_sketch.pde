void setup() {
	size(200,200);
	frameRate(30);
}

void draw() {
	background(100);
	stroke(255);
	// `frameCount` is used to color a rectangle
	fill(frameCount/2);
	rectMode(CENTER);
	// the rectangle will always be in the middle of the window
	// if it is located at (width/2, height/2)
	rect(width/2,height/2,mouseX+10,mouseY+10);
}

void keyPressed() {
	println(key);
}