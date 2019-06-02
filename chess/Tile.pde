class Tile{
  int xpos;
  int ypos;
  Piece on;
  Boolean c;
  public Tile(int a,int b,boolean d){
    xpos = a;
    ypos = b;
    c = d;
  }
  public void addPiece(Piece thing){
    on = thing;
    thing.t = this;
  }
  public void display(){
    if(c)fill(255);
    else fill(0);
    rect(xpos,ypos,100,100);
    if(on!=null)on.display();
  }
  public void change(){
    fill(155);
    rect(xpos,ypos,100,100);
    if(on!=null)
    on.display();
  }
  public int getx(){
    return xpos;
  }
  public int gety(){
    return ypos;
  }
  public void highlight(){
    if(c)
    fill(249, 249, 27);
    else
    fill(165, 165, 0);
    rect(xpos,ypos,100,100);
    if(on!=null)
    on.display();
  }
}
