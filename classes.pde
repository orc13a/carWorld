// ## Lanes (y-coor) ###
// # <-- #
// Top: 72
// Mid: 189
// bottom: 311
// # --> #
// Top: 478
// Mid: 608
// bottom: 727

int carW = 150;
int carH = 75;

class Vehicle {
  float x;
  float y;
  color c;
  boolean direc; // true: <-- | false: -->
  float speed;
  
  Vehicle(float x_, float y_, color c_, boolean direc_, float speed_) {
    x = x_;
    y = y_;
    c = c_;
    direc = direc_;
    speed = speed_;
  }
  
  void display() {
    vehDisplay();
  }
  
  void drive() {    
    if (direc == true) {
      x -= speed;
      
      if (x < (0 - carW)) {
        // x = width + carW; // This code will make the cars drive in loop
      }
    } else {
      x += speed;
      
      if (x > (width + carW)) {
        // x = 0 - carW; // This code will make the cars drive in loop
      }
    }
  }
  
  void vehDisplay() {
    // Needs to be here to get sub-classes vehDisplay() to get called
  }
}

class Car extends Vehicle { 
  Car(boolean direc_, float speed_) {
    super(getStaringX(direc_), chooseLane(direc_), paintVeh(), direc_, speed_);
  }
  
  void vehDisplay(){
    vehTires(x, y, carW, carH);
    
    fill(c); // Car color
    if (direc == true) {
      rect(x, y, carW, carH, 18, 12, 12, 18); // Car body
    } else {
      rect(x, y, carW, carH, 12, 18, 18, 12); // Car body
    }
  } 
  
}

class Ambulance extends Vehicle {
 Ambulance(boolean direc_, float speed_) {
    super(getStaringX(direc_), chooseLane(direc_), color(#fff432), direc_, speed_);
  }
  
  void vehDisplay(){
    vehTires(x, y, carW, carH);
    
    fill(c); // Ambulance color
    if (direc == true) {
      rect(x, y, carW, carH, 18, 12, 12, 18); // Ambulance body
     // ellipse(x-10, y, 10, 10);
    } else {
      rect(x, y, carW, carH, 12, 18, 18, 12); // Ambulance body
     // ellipse(x-10, y, 10, 10);
    }
  } 
}
