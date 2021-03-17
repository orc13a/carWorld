class Bird extends BirdSystem {
  float birdx;
  float birdy;
  float birdSpeedx;
  float birdSpeedy;
  
  Bird(float birdx_ , float birdy_ , float birdSpeedx_ , float birdSpeedy_){
    birdx = birdx_;
    birdy = birdy_;
    birdSpeedx = birdSpeedx_;
    birdSpeedy = birdSpeedy_;
  }
  
  void display() {
    noStroke();
    birdDisplay();
  }
  
  void move() {
    birdy += birdSpeedy;
  }
  
  void birdDisplay() {
    // For sub-class
  }
}

class Sparrow extends Bird {
  Sparrow(float birdx_ , float birdy_ , float birdSpeedx_ , float birdSpeedy_) {
    super(birdx_ , birdy_ , birdSpeedx_ , birdSpeedy_);
  }
  
  void birdDisplay() {
    fill(200, 200, 100);
    ellipse(birdx + 35, birdy - 10, 60, 20);
    ellipse(birdx - 35, birdy - 10, 60, 20);
    triangle(birdx, birdy + 10, birdx + 10, birdy + 40, birdx - 10, birdy + 40);
    ellipse(birdx, birdy, 30, 50);
    ellipse(birdx, birdy - 30, 20, 30);
    triangle(birdx, birdy - 65, birdx + 5, birdy -42, birdx - 5, birdy - 42);
  }
}
