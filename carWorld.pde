ArrayList<Vehicle> allVehicles = new ArrayList<Vehicle>();

void setup() {
  size(1000, 800);
  
  rectMode(CENTER);
  imageMode(CENTER);
  textAlign(CENTER);
  
  allVehicles.add(new Car());
}

void draw() {
  clear();
  background(#333333);
  
  for (Vehicle v : allVehicles) {
    v.display();
  }
}

void keyPressed() {
  if (key == 'c') {
    allVehicles.add(new Car());
  }
}
