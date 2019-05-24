import java.awt.Point;
import java.awt.MouseInfo;
Tile[][] board;
Tile current;

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
      board[i][j].display();
    }
    prev= !prev;
  }
  current = board[0][0];
}
void draw(){
  
  Tile past = current;
  current = board[mouseX/100%8][mouseY/100%8];
  current.change();
  if(past!=current)past.display();
  
}