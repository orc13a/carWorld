class BirdSystem extends WorldSystem {
  ArrayList<Bird> allBirds = new ArrayList<Bird>();
  
  void run() {
    for (Bird b : allBirds) {
      b.display();
      b.move();
    }
  }
  
  void pressKey() {
    if (key == 's') {
      allBirds.add(new Sparrow(random(width), height, random(-2, 2), random(-birdSpeed, 0)));
    }
  }
}
