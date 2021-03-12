// Lanes (y-coor)
// <-- 
// Top: 72
// Mid: 189
// bottom: 311
// -->
// Top: 
// Mid: 
// bottom: 

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
    carTires(x, y, carW, carH);
    
    fill(c); // Car color
    if (direc == true) {
      rect(x, y, carW, carH, 18, 12, 12, 18); // Car body
    } else {
      rect(x, y, carW, carH, 12, 18, 18, 12); // Car body
    }
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

void carTires(float x, float y, int w, int h) {
  int tireSize = 25;
  
  float rightSideY = (y - (h / 2)); // Top tires y
  float leftSideY = (y + (h / 2)); // Top tires y
  float frontX = (x - (w / 2)) + (5 + tireSize); // Front tires x
  float backX = (x + (w / 2)) - (5 + tireSize); // Back tires x
  
  fill(0);
  
  rect(frontX, rightSideY, tireSize, 10); // Front right
  rect(frontX, leftSideY, tireSize, 10); // Front left
  rect(backX, rightSideY, tireSize, 10); // Front right
  rect(backX, leftSideY, tireSize, 10); // Front left
}


int chooseLane(boolean direc) {
  int[] topLanesY = {72, 189, 311};
  int[] bottomLanesY = {478, 608, 727};
  
  if (direc == true) {
    return topLanesY[int(random(3))];
  } else {
    return bottomLanesY[int(random(3))];
  }
}

int getStaringX(boolean direc) {
  if (direc == true) {
      return width + carW;
    } else {
      return 0 - carW;
    }
}
