// ## Lanes (y-coor) ###
// # <-- #
// Top: 72
// Mid: 189
// bottom: 311
// # --> #
// Top: 478
// Mid: 608
// bottom: 727

int carW = 150; // A cars width
int carH = 75; // A cars height

class Vehicle {
  float x;
  float y;
  color c;
  boolean direc; // true: <-- | false: -->
  float speed;
  
  Vehicle(float x_, float y_, color c_, boolean direc_, float speed_) { // direc = direction
    x = x_;
    y = y_;
    c = c_;
    direc = direc_;
    speed = speed_;
  }
  
  void display() {
    vehTires(x, y, carW, carH); // Set the tires
    vehLights(x, y, carW, carH, direc); // Set the front lights
    
    vehDisplay(); // Display speciel car graphics
  }
  
  void drive() {    
    if (direc == true) {
      x -= speed; // For drive <-- direction
      
      /* // This code will make the cars drive in loop
      if (x < (0 - carW)) {
        // x = width + carW;
      }
      */
    } else {
      x += speed; // For drive --> direction
      
      /* // This code will make the cars drive in loop
      if (x > (width + carW)) {
        // x = 0 - carW;
      }
      */
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
    fill(c); // Car color
    // Check driving direction
    if (direc == true) {
      rect(x, y, carW, carH, 18, 12, 12, 18); // Car body
    } else {
      rect(x, y, carW, carH, 12, 18, 18, 12); // Car body
    }
  } 
}

class Ambulance extends Vehicle {
  
  Ambulance(boolean direc_, float speed_, float lane_) {
    super(getStaringX(direc_), lane_, color(#fff432), direc_, speed_);
  }
  
  void vehDisplay(){
    fill(c); // Ambulance color
    // Check driving direction
    if (direc == true) {
      rect(x, y, carW, carH, 18, 12, 12, 18); // Ambulance body
    } else {
      rect(x, y, carW, carH, 12, 18, 18, 12); // Ambulance body
    }
    
    ambulanceLightsAndText(x, y, carW, carH, direc); // Set blue lights
  } 
}
