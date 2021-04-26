// Declare car object as a globle variable
Car myCar;

void setup() {
  size(200,200);
  // Initialize Car object — by calling constructor
  myCar = new Car();
}

void draw() {
  background(0);

  // Operate Car object.
  myCar.move();
  myCar.display();
}