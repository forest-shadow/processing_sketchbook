size(260, 180);
background(255);
smooth(); // enable anti-aliasing

ellipseMode(CENTER);

// body
stroke(0);
fill(150);
rect(90,55,90,30);

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
line(110,55,80,15);
line(110,85,80,125);

line(180,55,210,15);
line(180,85,210,125);

line(170,70,210,70);
