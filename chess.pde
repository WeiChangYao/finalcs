import java.awt.Point;
import java.awt.MouseInfo;
Tile[][] board;
Tile start;
Tile end;
Piece b;
boolean inmove = false;;
void setup() {
  size(800, 800);
  background(255);
  smooth();
  noStroke();
  boolean prev = true;
  board =  new Tile[8][8];
  for(int i = 0; i < 8; i++)
  {
    for(int j = 0; j < 8; j++)
    {
      board[i][j] = new Tile(i*100,j*100,prev);
      prev=!prev;
      if(i!=0||j!=0)
      board[i][j].display();
    }
    prev= !prev;
  }
  Tile f = board[0][0];
  Piece a = new Piece(f);
  f.addPiece(a);
  f.display();
  //ellipse(200+50,0+50,80,80);
}
void draw(){
}
 void mouseClicked() {
  if(!inmove)
  {
    start = board[mouseX/100%8][mouseY/100%8];
    if(start.on!=null){
      start.change();
      inmove = true;
      System.out.println("move started"); 
    }
    
  }
  else
  {
    end = board[mouseX/100%8][mouseY/100%8];
    int tx = end.getx();
    int ty = end.gety();
    if(start!=end){
      Piece temp = start.on;
      start.on = null;
      temp.t= end;
      System.out.println(temp.t.getx()+"  "+temp.t.gety());
      end.on=temp;
      start.display();
      temp.display();
      end = null;
      start = null;
      inmove = false;
      System.out.println("move finished  " +tx+"  "+ty );
    }
  }
}
