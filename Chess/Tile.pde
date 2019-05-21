class Tile{
  int xpos;
  int ypos;
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
}