class WorldSystem {
  ArrayList<WorldSystem> allSystems = new ArrayList<WorldSystem>();
  int selectedSystem = 0;
  
  // Dette virker ikke efter at Processing/Java giver os "StackOverflowError"
  // CarSystem carSystem;
  // BirdSystem birdSystem;
 
  WorldSystem() {
    // Dette virker ikke efter at Processing/Java giver os "StackOverflowError"
    // carSystem = new CarSystem();
    // birdSystem = new BirdSystem();
    
    allSystems.add(carSystem);
    allSystems.add(birdSystem);
  }
  
  void run() {
    clear();

    for (WorldSystem sys : allSystems) {
      sys.run();
    }
  }
  
  void pressKey() {
    allSystems.get(selectedSystem).pressKey();
  }
  
  void pressMouse() {
    selectedSystem = int(random(allSystems.size() + 1));
  }
}
