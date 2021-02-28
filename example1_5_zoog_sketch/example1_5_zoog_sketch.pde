size(250, 250);
background(255);

ellipseMode(CENTER);
//rectMode(CENTER);

// body
stroke(0);
fill(150);
rect(100,100,20,100);

// head
fill(255);
ellipse(70,70,60,60);
fill(0);
ellipse(70,60,32,16);
noFill();
stroke(0);
arc(70, 68, 48, 48, PI/9, 8*PI/9);

// limbs
stroke(0);
line(90,150,80,160);
line(110,150,120,160);
