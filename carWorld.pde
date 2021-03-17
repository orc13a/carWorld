WorldSystem worldSystem;
CarSystem carSystem = new CarSystem();
BirdSystem birdSystem = new BirdSystem();

// ## Settings ##
float carSpeed = 8;
float ambulanceSpeed = 12;
// ##############

void setup() {
  size(1000, 800);
  
  smooth(8);
  frameRate(60);
  
  rectMode(CENTER);
  imageMode(CENTER);
  textAlign(CENTER);
  
  // Vi gør det på den her møde for ellers giver Processing/Java os "StackOverflowError"
  // Vi har prøvet at gøre det så meget OOP som muligt
  // carSystem = new CarSystem();
  // birdSystem = new BirdSystem();
  
  worldSystem = new WorldSystem();
}

void draw() {
  worldSystem.run();
}

void keyPressed() {
  worldSystem.pressKey();
}

void mousePressed() {
  worldSystem.pressMouse();
}
