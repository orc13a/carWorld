ArrayList<Vehicle> allVehicles = new ArrayList<Vehicle>();

// ## Settings ##
float carSpeed = 8;

void setup() {
  size(1000, 800);
  
  smooth(8);
  
  rectMode(CENTER);
  imageMode(CENTER);
  textAlign(CENTER);
}

void draw() {
  clear();
  highway();
  
  for (Vehicle v : allVehicles) {
    v.display();
    v.drive();
  }
}

void keyPressed() {
  if (key == 'd') {
    allVehicles.add(new Car(true, carSpeed));
  }
  
  if (key == 'c') {
    allVehicles.add(new Car(false, carSpeed));
  }
}
