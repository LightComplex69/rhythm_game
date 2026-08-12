class Arrow {

  float arrowSize, arrowRotation;
  int arrowSpeed, arrowLane;
  PVector position;
  color arrowColor;
  boolean arrowHit;

  Arrow(int lane, float SizeOfArrow, int speed) {
    this.position = new PVector(0, height + 100);
    this.arrowLane = lane;
    this.arrowSpeed = speed;
    this.arrowSize = SizeOfArrow;
    this.arrowHit = false;
  }

  void defineLanes() {
    //if (dist(position.y, position.y, settings.sick, settings.sick) <= 80) {
    //  megalovania.play();
    //}

    switch(arrowLane) {
    case 1:
      //hit test line
      //stroke(255);
      //line(0, position.y+arrowSize, width, position.y+arrowSize);
      //----------------------------------------------------------------------------
      position.x = width*.15; // left
      arrowRotation = HALF_PI;
      arrowColor = #FF916C;
      break;
    case 2:
      //hit test line
      //stroke(255);
      //line(0, position.y-arrowSize/2, width, position.y-arrowSize/2);
      //----------------------------------------------------------------------------
      position.x = width*.15 + 170; // up
      arrowRotation = PI;
      arrowColor = #6CEAFF;
      break;
    case 3:
      //hit test line
      //stroke(255);
      //line(0, position.y+(1.5*arrowSize), width, position.y+(1.5*arrowSize));
      //----------------------------------------------------------------------------
      position.x = width*.15 + 50; // down
      arrowRotation = 0;
      arrowColor = #8EFF6C;
      break;
    case 4: 
      //hit test line
      //stroke(255);
      //line(0, position.y, width, position.y);
      //----------------------------------------------------------------------------
      position.x = width*.15 + 220; // right
      arrowRotation = -HALF_PI;
      arrowColor = #C46CFF;
      break;
    }
  }

  void spawn() {
    //println(dist(position.y, position.y, settings.bad, settings.bad));
    if (position.y > -50 && !arrowHit) {
      defineLanes();
      pushMatrix();
      translate(position.x + arrowSize/2, position.y + arrowSize/2);
      rotate(arrowRotation);
      noStroke();
      fill(arrowColor);
      rect(0, 0, arrowSize, arrowSize);  
      triangle(-arrowSize/2, arrowSize, arrowSize+arrowSize/2, arrowSize, arrowSize/2, arrowSize+arrowSize);
      popMatrix();

      position.y -= arrowSpeed;
    }
  }

  void keyPressed() {
    if (key == settings.downKey && arrowLane == 3 || key == CODED && keyCode == DOWN && arrowLane == 3) {
      if (dist(position.y+(1.5*arrowSize), position.y+(1.5*arrowSize), settings.bad, settings.bad) <= 20) {
        //frameCount = 0;
        hitAccuracy = "Bad...";
        arrowHit = true;
      } else if (dist(position.y+(1.5*arrowSize), position.y+(1.5*arrowSize), settings.good, settings.good) <= 20) {
        //frameCount = 0;
        hitAccuracy = "Good!";
        arrowHit = true;
      } else if (dist(position.y+(1.5*arrowSize), position.y+(1.5*arrowSize), settings.perfect, settings.perfect) <= 25) {
        //frameCount = 0;
        hitAccuracy = "Perfect!!!";
        arrowHit = true;
      }
    }
    if (key == settings.upKey && arrowLane == 2 || key == CODED && keyCode == UP && arrowLane == 2) {
      if (dist(position.y-arrowSize/2, position.y-arrowSize/2, settings.bad, settings.bad) <= 20) {
       // frameCount = 0;
        hitAccuracy = "Bad...";
        arrowHit = true;
      } else if (dist(position.y-arrowSize/2, position.y-arrowSize/2, settings.good, settings.good) <= 20) {
        //frameCount = 0;
        hitAccuracy = "Good!";
        arrowHit = true;
      } else if (dist(position.y-arrowSize/2, position.y-arrowSize/2, settings.perfect, settings.perfect) <= 25) {
        //frameCount = 0;
        hitAccuracy = "Perfect!!!";
        arrowHit = true;
      }
    }
    if (key == settings.leftKey && arrowLane == 1 || key == CODED && keyCode == LEFT && arrowLane == 1) {
      if (dist(position.y+arrowSize, position.y+arrowSize, settings.bad, settings.bad) <= 20) {
        //frameCount = 0;
        hitAccuracy = "Bad...";
        arrowHit = true;
      } else if (dist(position.y+arrowSize, position.y+arrowSize, settings.good, settings.good) <= 20) {
       // frameCount = 0;
        hitAccuracy = "Good!";
        arrowHit = true;
      } else if (dist(position.y+arrowSize, position.y+arrowSize, settings.perfect, settings.perfect) <= 25) {
       // frameCount = 0;
        hitAccuracy = "Perfect!!!";
        arrowHit = true;
      }
    }
    if (key == settings.rightKey && arrowLane == 4 || key == CODED && keyCode == RIGHT && arrowLane == 4) {
      if (dist(position.y, position.y, settings.bad, settings.bad) <= 20) {
       // frameCount = 0;
        hitAccuracy = "Bad...";
        arrowHit = true;
      } else if (dist(position.y, position.y, settings.good, settings.good) <= 20) {
      //  frameCount = 0;
        hitAccuracy = "Good!";
        arrowHit = true;
      } else if (dist(position.y, position.y, settings.perfect, settings.perfect) <= 25) {
       // frameCount = 0;
        hitAccuracy = "Perfect!!!";
        arrowHit = true;
      }
    }
  }
}
