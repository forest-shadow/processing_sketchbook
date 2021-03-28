int canvasSize = 200;
float centerX = canvasSize/2;
float centerY = canvasSize/2;
float line01StartX = canvasSize/2;
float line01StartY = 0;
float line02StartX = 0;
float line02StartY = canvasSize;
float line03StartX = canvasSize;
float line03StartY = canvasSize;
float line04StartX = line01StartX;
float line04StartY = line01StartY;

void setup() {
    size(200, 200);
    background(240);
    strokeWeight(2);
}

void draw() {
    line(line01StartX, line01StartY, centerX, centerY);
    line(line02StartX, line02StartY, centerX, centerY);
    line(line03StartX, line03StartY, centerX, centerY);
    line(line04StartX, line04StartY, centerX, centerY);

    if(line02StartX != canvasSize/2) {
        line02StartX++;
        line03StartX--;
    }
    if(line01StartX != 0) {
        line01StartX--;
        line04StartX++;
    }
}