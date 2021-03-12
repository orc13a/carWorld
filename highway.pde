//Highway Int
int highwaySideLinesW = 10; // Weight of the lines
int highwaySlinesDisTop;
int highwaySlinesDisBottom;
//Lines int
int yLines1 = 130;
int yLines2 = 250;
int yLines3 = 550;
int yLines4 = 670;
int xLines;
int lineSpace = 128;
int lineLength = 64;
int lineWidth = 4;

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
  
  lines();
}

void lines() {
  
  for(int xLines = 0; xLines < 1000 + lineLength; xLines = xLines + lineSpace){
    fill(255);
      rect(xLines, yLines1, lineLength, lineWidth);
      rect(xLines, yLines2, lineLength, lineWidth);
      rect(xLines, yLines3, lineLength, lineWidth);
      rect(xLines, yLines4, lineLength, lineWidth);
  }
}
