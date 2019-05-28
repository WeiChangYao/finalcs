import java.awt.Point;
import java.awt.MouseInfo;
Tile[][] board;
Tile current;
PImage pawn;
PImage knight;
PImage queen;
PImage king;
PImage rook;
PImage bishop;
PImage pawnW;
PImage knightW;
PImage queenW;
PImage kingW;
PImage rookW;
PImage bishopW;

void setup() {
  pawn = loadImage("pawn.png");
  knight = loadImage("knight.png");
  queen = loadImage("queen.png");
  king = loadImage("king.png");
  rook = loadImage("rook.png");
  bishop = loadImage("bishop.png");
  pawnW = loadImage("pawnW.png");
  knightW = loadImage("knightW.png");
  queenW = loadImage("queenW.png");
  kingW = loadImage("kingW.png");
  rookW = loadImage("rookW.png");
  bishopW = loadImage("bishopW.png");
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