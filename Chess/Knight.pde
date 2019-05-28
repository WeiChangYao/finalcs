class Knight extends Piece{
  Knight (Tile t, boolean col){
    super(t,col);
  }
  void display(int x, int y){
    image(knight, x, y);
  }
  boolean getColor(){
    return col;
  }
}