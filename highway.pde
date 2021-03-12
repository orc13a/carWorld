int highwaySideLinesW = 10; // Weight of the lines
int highwaySlinesDisTop;
int highwaySlinesDisBottom;

void highway() {
  highwaySlinesDisTop = highwaySideLinesW + 5; // Cal pos
  highwaySlinesDisBottom = (height - 5) - highwaySideLinesW; // Cal pos
  
  background(#333333); // Light black
  
  strokeWeight(highwaySideLinesW);
  stroke(255);
  line(0, highwaySlinesDisTop, width, highwaySlinesDisTop); // End of highway top
  line(0, highwaySlinesDisBottom, width, highwaySlinesDisBottom); // End of highway bottom
  
  fill(#2bce23); // Green
  noStroke();
  rect((width / 2), (height / 2), width, 50); // The lines derection splitter
}
