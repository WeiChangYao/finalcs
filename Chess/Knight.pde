class Knight extends Piece{
  Knight (Tile t, boolean col){
    super(t,col);
  }
  void display(int x, int y) {
    if (col == true) {
      image(knight, x, y);
    } else {
      image (knightW, x, y);
    }
  }
  boolean getColor(){
    return col;
  }
}