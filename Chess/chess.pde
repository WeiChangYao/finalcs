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
  public void display(){
    if(c)fill(255);
    else fill(0);
    rect(xpos,ypos,100,100);
  }
  public void hovering(){
    if(mouseX>=xpos&&mouseX<=xpos+100&&mouseY>=ypos&&mouseY<=ypos) fill(155);
    rect(xpos,ypos,100,100);
  } 
}
