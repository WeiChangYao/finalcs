
void setup() {
  size(800, 800);
  background(255);
  smooth();
  noStroke();
}



void draw() {
  for (int i = 0; i<8; i++) {
    for (int y = 0; y<8; y++) {
      if (y<7&&y%2==0&&i<7&&i%2==0) {
        fill(0, 0, 0);
      } else {
        fill(255, 255, 255);
      }
      rect(i*100, y*100, 100, 100);
    }
  }
  if (mousePressed) {
    fill(222, 0, 0);
    rect(mouseX, mouseY, 100, 100);
  }
  class thing {
    color c;
    thing() {
      c =  10;
    }
  }
}