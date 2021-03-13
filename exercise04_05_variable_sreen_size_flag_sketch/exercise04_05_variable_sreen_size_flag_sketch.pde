void setup() {
	size(200, 200);
	frameRate(30);
    rectMode(CENTER);
    ellipseMode(CENTER);
}

void draw() {
	background(180);
    float centerX = width/2;
    float centerY = height/2;
    float cornerGap = width/12;

    fill(255);
	rect(centerX, centerY, width - cornerGap*2, height
     - cornerGap*2);
    line(cornerGap, cornerGap, width - cornerGap, height - cornerGap);
    line(cornerGap, height - cornerGap, width - cornerGap, cornerGap);
    fill(200);
    ellipse(centerX, centerY, width/2.7, height/2.7);
    rect(width/5, centerY, width/8, height/8);
    rect(width - width/5, centerY, width/8, height/8);
}