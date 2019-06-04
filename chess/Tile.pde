class Tile {
  int xpos;
  int ypos;
  Piece on;
  Boolean c;
  public Tile(int a, int b, boolean d) {
    xpos = a;
    ypos = b;
    c = d;
  }
  public void addPiece(Piece thing) {
    on = thing;
    thing.t = this;
  }
  public int getX() {
    return xpos;
  }
  public int getY() {
    return ypos;
  }
  public void display() {
    if (c)fill(255,228,196);
    else fill(160,82,45);
    rect(xpos, ypos, 100, 100);
    if (on!=null)on.display();
  }
  void displayR(){
    fill(255, 204, 0);
  }
  public void change() {
    fill(155);
    rect(xpos, ypos, 100, 100);
    if (on!=null)
      on.display();
  }
  public int getx() {
    return xpos;
  }
  public int gety() {
    return ypos;
  }
  public void highlight() {
    if (c)
      fill(249, 249, 27);
    else
      fill(165, 165, 0);
    rect(xpos, ypos, 100, 100);
    if (on!=null)
      on.display();
  }
}
