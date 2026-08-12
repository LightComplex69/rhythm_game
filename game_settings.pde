class GameSettings {
  char leftKey, upKey, rightKey, downKey;
  boolean left, up, right, down;
  float perfect, good, bad, miss;
  GameSettings(char left, char up, char right, char down) {
    this.leftKey = left;
    this.upKey = up;
    this.rightKey = right;
    this.downKey = down;
    
    this.perfect = height * .08725;
    this.good = height * .117;
    this.bad = height * .14;
  }

  void hitTimings() {
    stroke(0, 255, 0);
    strokeWeight(5);
    line(0, perfect, width, perfect); 
//------------------------------------------------------------------
    stroke(0, 255, 255, 100);
    strokeWeight(5);
    line(0, good, width, good);

    line(0, perfect + (perfect - good), width, perfect + (perfect - good));
//------------------------------------------------------------------
    stroke(255, 100, 0, 100);
    strokeWeight(5);
    line(0, bad, width, bad);

    line(0, perfect + (perfect - bad), width, perfect + (perfect - bad));
  }
}
