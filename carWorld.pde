ArrayList<Vehicle> allVehicles = new ArrayList<Vehicle>();

// ## Settings ##
float carSpeed = 8;
float ambulanceSpeed = 12;

void setup() {
  size(1000, 800);
  
  smooth(8);
  frameRate(60);
  
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
  // Add car
  if (key == 'd') {
    allVehicles.add(new Car(true, carSpeed));
  }
  
  if (key == 'c') {
    allVehicles.add(new Car(false, carSpeed));
  }
  
  // Add Ambulance
  if (key == 'q') {
    allVehicles.add(new Ambulance(true, ambulanceSpeed, 311));
  }
  
  if (key == 'a') {
    allVehicles.add(new Ambulance(false, ambulanceSpeed, 478));
  }
  
  // Clear array
  if (key == 'r') {
    clearArray();
  }
}
