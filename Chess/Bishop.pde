class Bishop extends Piece{
  Bishop (Tile t, boolean col){
    super(t,col);
  }
  void display(int x, int y) {
    if (col == true) {
      image(bishop, x, y);
    } else {
      image (bishopW, x, y);
    }
  }
  boolean getColor(){
    return col;
  }
}