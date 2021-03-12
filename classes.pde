class Vehicle {
  Vehicle() {
  
  }

}

class Car extends Vehicle {
  void vehDisplay(){
    fill(255, 10, 50);
    rect(100, 100, 50, 20);
    
  } 
  
}

class Ambulance extends Vehicle {
    void vehDisplay(){
      fill(204, 255, 104);
      rect(200, 100, 50, 20);
      
  }
  
}
