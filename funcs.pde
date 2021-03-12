// For giving a car a random color
int paintVeh() {
  color newColor;
  int r,g,b;
  r = int(random(255));
  g = int(random(255));
  b = int(random(255));
  
  newColor = color(r, g, b);
  
  return newColor;
}

// For placing and drawing the tires
void vehTires(float x, float y, int w, int h) {
  int tireSize = 25;
  
  // Coordinates
  float rightSideY = (y - (h / 2)); // Top tires y
  float leftSideY = (y + (h / 2)); // Top tires y
  float frontX = (x - (w / 2)) + (5 + tireSize); // Front tires x
  float backX = (x + (w / 2)) - (5 + tireSize); // Back tires x
  
  // Tire color
  fill(0);
  
  // The tires themselfs
  rect(frontX, rightSideY, tireSize, 10); // Front right
  rect(frontX, leftSideY, tireSize, 10); // Front left
  rect(backX, rightSideY, tireSize, 10); // Front right
  rect(backX, leftSideY, tireSize, 10); // Front left
}

// For placing and drawing the head lights
void vehLights(float x, float y, int w, int h, boolean direc) {
  int lightBoxW = 5;
  int lightBoxH = 10;
  
  // Coordinates
  float lightsX;
  float rightLightY;
  float leftLightY;
  
  // Check driving direction
  if (direc == true) {
    lightsX = x - (w / 2);
    rightLightY = y - (h / 4);
    leftLightY = y + (h / 4);
  } else {
    lightsX = x + (w / 2);
    rightLightY = y + (h / 4);
    leftLightY = y - (h / 4);
  }
  
  // Color of the headlights
  fill(#aef2ef);
  
  // Check driving direction
  if (direc == true) {
    rect(lightsX, rightLightY, lightBoxW, lightBoxH); // Right light
    rect(lightsX, leftLightY, lightBoxW, lightBoxH); // Left light
  } else {
    rect(lightsX, rightLightY, lightBoxW, lightBoxH); // Right light
    rect(lightsX, leftLightY, lightBoxW, lightBoxH); // Left light
  }
}

// For placing a new car in a random lane
int chooseLane(boolean direc) {
  // The lanes mid coordinates
  //                 top  midel bottom
  int[] topLanesY = {72, 189, 311};
  int[] bottomLanesY = {478, 608, 727};
  
  // Check driving direction
  if (direc == true) {
    return topLanesY[int(random(3))];
  } else {
    return bottomLanesY[int(random(3))];
  }
}

// For getting witch side of the screen the vehical should spawn
int getStaringX(boolean direc) {
  // Check driving direction
  // + and - carW, so the car spawns totally out of the screen
  if (direc == true) {
    return width + carW;
  } else {
    return 0 - carW;
  }
}

// This is for placing the blue lights on the ambulance and the text
void ambulanceLightsAndText(float x, float y, int w, int h, boolean direc) {
  int lightsSize = 15;
  
  float textX;
  
  float frontLightsX;
  float backLightsX;
  float leftSideLights = y + (h / 2) - 10;
  float rightSideLights = y - (h / 2) + 10;
  
  // Check driving direction
  if (direc == true) {
    frontLightsX = x - (w/5);
    backLightsX = x + (w/2) - 20;
    textX = x + (w/8);
  } else {
    frontLightsX = x + (w/5);
    backLightsX = x - (w/2) + 20;
    textX = x - (w/8);
  }
  
  fill(#04a007);
  textSize(14);
  text("Ambulance", textX, y + 2);
  
  fill(#0d6ae2);  
  
  ellipse(frontLightsX, leftSideLights, lightsSize, lightsSize); // Front lights
  ellipse(frontLightsX, rightSideLights, lightsSize, lightsSize); // Front lights
  ellipse(backLightsX, leftSideLights, lightsSize, lightsSize); // Back lights
  ellipse(backLightsX, rightSideLights, lightsSize, lightsSize); // Back lights
}

// Clear the array, this is mostly for better preformance if you have spawned alot of vehicals
void clearArray() {
  // Start from the end of the array, better if player is spawing new car in the midel of the resting
  for (int i = allVehicles.size(); i > 0; i--) {
    Vehicle v = allVehicles.get(i - 1);
    
    allVehicles.remove(v);
  }
}
