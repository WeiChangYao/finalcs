class Pawn extends Piece{
  Pawn (Tile t, boolean col){
    super(t,col);
  }
  void display(int x, int y){
    image(pawn, x, y);
  }
  boolean getColor(){
    return col;
  }
}