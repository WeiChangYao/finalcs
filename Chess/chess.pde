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
}
void draw(){
  board[mouseX/100%8][mouseY/100%8].change();
  if
}


