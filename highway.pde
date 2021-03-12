int highwaySideLinesW = 10; // Weight of the lines
int highwaySlinesDisTop;
int highwaySlinesDisBottom;

int yLines = 100;
int xLines;
int lineSpace = 100;
int lineLength = 50;
int lineWidth = 5;

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
  rect((width / 2), (height / 2), width, 50); // The lines direction splitter
  
  
}

void lines() {
  
  for(int xLines = 0; xLines < 1000; xLines = xLines + lineSpace){
    fill(255);
      rect(xLines, yLines, lineLength, lineWidth);

  }
}
