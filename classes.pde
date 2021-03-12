class Vehicle {
  float x;
  float y;
  color c; 
  
  Vehicle(color c_) {
    c = c_;
  }
  
  void display() {
    vehDisplay();
  }
  
  void drive() {
    
  }
  
  void vehDisplay() {
    // Needs to be here to get sub-classes vehDisplay() to get called
  }
}

class Car extends Vehicle {
  Car(float x_, float y, float speed) {
    super(paintVeh());
  }
  
  void vehDisplay(){
    fill(c);
    
    rect(100, 100, 175, 100);
  } 
  
}

/*class Ambulance extends Vehicle {
  
  
  void vehDisplay(){
      fill(204, 255, 104);
      rect(200, 100, 50, 20);
  }
  
}*/

int paintVeh() {
  color newColor;
  int r,g,b;
  r = int(random(255));
  g = int(random(255));
  b = int(random(255));
  
  newColor = color(r, g, b);
  
  return newColor;
}
