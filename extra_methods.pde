void playArrows(float x, float y, float SizeOfArrow) {
  float arrowSize = SizeOfArrow;   

  if (keyPressed && key == settings.leftKey || keyPressed && key == CODED && keyCode == LEFT) {
    lColor = #FF6531;
  } else {
    lColor = #FF916C;// #FF916C
  }
  if (keyPressed && key == settings.upKey || keyPressed && key == CODED && keyCode == UP) {
    uColor = #31E2FF;
  } else {
    uColor = #6CEAFF;
  }
  if (keyPressed && key == settings.downKey || keyPressed && key == CODED && keyCode == DOWN) {
    dColor = #3FFF00;
  } else {
    dColor = #8EFF6C;
  }
  if (keyPressed && key == settings.rightKey || keyPressed && key == CODED && keyCode == RIGHT) {
    rColor = #AC31FF;
  } else {
    rColor = #C46CFF;
  }
  pushMatrix(); // left
  translate(x + arrowSize/2, y + arrowSize/2);
  rotate(HALF_PI);
  noStroke();
  fill(lColor);
  rect(0, 0, arrowSize, arrowSize);  
  triangle(-arrowSize/2, arrowSize, arrowSize+arrowSize/2, arrowSize, arrowSize/2, arrowSize+arrowSize);
  popMatrix();

  pushMatrix(); // down
  translate(x + 50 + arrowSize/2, y - 15 + arrowSize/2);
  //rotate(0);
  noStroke();
  fill(dColor); // #8EFF6C
  rect(0, 0, arrowSize, arrowSize);  
  triangle(-arrowSize/2, arrowSize, arrowSize+arrowSize/2, arrowSize, arrowSize/2, arrowSize+arrowSize);
  popMatrix();

  pushMatrix(); // up
  translate(x + 170 + arrowSize/2, y + 40 + arrowSize/2);
  rotate(PI);
  noStroke();
  fill(uColor); // #6CEAFF
  rect(0, 0, arrowSize, arrowSize);  
  triangle(-arrowSize/2, arrowSize, arrowSize+arrowSize/2, arrowSize, arrowSize/2, arrowSize+arrowSize);
  popMatrix();

  pushMatrix(); // right
  translate(x + 220 + arrowSize/2, y + 30 + arrowSize/2);
  rotate(-HALF_PI);
  noStroke();
  fill(rColor); // #C46CFF
  rect(0, 0, arrowSize, arrowSize);  
  triangle(-arrowSize/2, arrowSize, arrowSize+arrowSize/2, arrowSize, arrowSize/2, arrowSize+arrowSize);
  popMatrix();
} 

void accuracy() { 
  defineAccuracyColor();
  //if (frameCount < 60) {
    fill(accColor);
    textSize(20);
    text(hitAccuracy, width/2, height*0.2);
 // }
}

void defineAccuracyColor() {
  switch(hitAccuracy) {
  case "Bad...":
    accColor = #FF5858;
    break;
  case "Good!":
    accColor = #58FBFF;
    break;
  case "Perfect!!!":
    accColor = #FBFF34;
    break;

  default:
    break;
  }
}
