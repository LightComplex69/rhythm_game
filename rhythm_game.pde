import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
AudioPlayer megalovania;
Minim minim;
GameSettings settings;
ArrayList<Arrow> arrows = new ArrayList<Arrow>();
color lColor, uColor, dColor, rColor, accColor;
String hitAccuracy;

void setup() {
  size(400, 800);
  settings = new GameSettings('a', 'w', 'd', 's');
  minim = new Minim(this);
  megalovania = minim.loadFile("megalovania.mp3");
  hitAccuracy = " ";
}

void draw() {
  background(70);
  settings.hitTimings();
  playArrows(width*.15, height*.05, 30);
  accuracy();

  if (frameCount%10 == 0) {
    //arrows.add(new Arrow(4, 30, 5));
    arrows.add(new Arrow(int(random(1, 5)), 30, 10));
  }

  for (Arrow a : arrows) {
    a.spawn();
  }
}

void keyPressed() {
  for (Arrow a : arrows) {
    a.keyPressed();
  }
}
