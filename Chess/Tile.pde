class Tile{
  int xpos;
  int ypos;
  Piece on;
  Boolean c;
  public Tile(int a,int b,boolean d){ //Sting name
    xpos = a;
    ypos = b;
    c = d;
  }
  public void display(){
    if(c)fill(255);
    else fill(0);
    rect(xpos,ypos,100,100);
    //image(pawn, 0, 0);  //image(name xpos, ypos?
  }
  public void change(){
    fill(155);
    rect(xpos,ypos,100,100);
  } 
}