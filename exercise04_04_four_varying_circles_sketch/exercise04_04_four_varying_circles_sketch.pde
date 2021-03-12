float circleDiameter = 60;
boolean shouldGrow = false;

void setup() {
    size(200, 200);
    smooth();
    ellipseMode(CENTER);
}

void draw() {
    background(240);
    fill(160);
    stroke(0);
    ellipse(60, 60, circleDiameter, circleDiameter);
    ellipse(140, 60, circleDiameter, circleDiameter);
    ellipse(60, 140, circleDiameter, circleDiameter);
    ellipse(140, 140, circleDiameter, circleDiameter);

    if(circleDiameter == 0) {
        shouldGrow = true;
    }
    if(circleDiameter == 60) {
        shouldGrow = false;
    }

    if(shouldGrow) {
        circleDiameter++;
    } else {
        circleDiameter--;
    }
}