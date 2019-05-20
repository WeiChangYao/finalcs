void setup() {
  size(800, 800);
  background(255);
  smooth();
  noStroke();
}

int xpos;
int ypos;
boolean tcolor;
class Tile { 
  Tile(int x, int y, boolean coler) { //PUT IN PIECE LATER
    xpos = x;
    ypos = y;
    tcolor = coler;
  }
}