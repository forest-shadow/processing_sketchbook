float canvasSize = 300;
float ellipseCenterX = canvasSize/2;
float ellipseCenterY = canvasSize/2;
float ellipseW = canvasSize/2;
float ellipseH = canvasSize/2;
boolean stopEllipseChanges = false;

void setup() {
    size(300, 300);
    ellipseMode(CENTER);
}

void draw() {
    background(200);
    fill(255);
    ellipse(ellipseCenterX, ellipseCenterY, ellipseW, ellipseH);

    if(Math.abs(ellipseW) == (canvasSize - 50)) {
        stopEllipseChanges = true;
    }

    if(!stopEllipseChanges) {
        if (ellipseW > 10) {
            ellipseH--;
            ellipseW = ellipseW - 2;
        } else {
            ellipseH = ellipseH - 20;
            ellipseW = ellipseW - 20;
        }
    }

    println(Math.abs(ellipseW));
    println(Math.abs(ellipseW),  canvasSize - 50);
    
}