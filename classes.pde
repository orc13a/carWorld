class Vehicle {
  Vehicle() {
  
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
  void vehDisplay(){
    fill(255, 10, 50);
    rect(100, 100, 50, 100);
  } 
  
}

class Ambulance extends Vehicle {
    void vehDisplay(){
      fill(204, 255, 104);
      rect(200, 100, 50, 20);
      
  }
  
}
