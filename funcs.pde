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
