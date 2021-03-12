ArrayList<Vehicle> allVehicles = new ArrayList<Vehicle>();

// Lanes (y-coor)
// <-- 
// Top: 72
// Mid: 189
// bottom: 311
// -->
// Top: 
// Mid: 
// bottom: 

void setup() {
  size(1000, 800);
  smooth(8);
  rectMode(CENTER);
  imageMode(CENTER);
  textAlign(CENTER);
  
  allVehicles.add(new Car(true));
}

void draw() {
  clear();
  highway();
  
  for (Vehicle v : allVehicles) {
    v.display();
  }
}

void keyPressed() {
  if (key == 'd') {
    allVehicles.add(new Car(true));
  }
  
  if (key == 'c') {
    allVehicles.add(new Car(false));
  }
}
