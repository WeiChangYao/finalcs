class Rook extends Piece{
  Rook (Tile t, boolean col){
    super(t,col);
  }
  void display(int x, int y) {
    if (col == true) {
      image(rook, x, y);
    } else {
      image (rookW, x, y);
    }
  }
  boolean getColor(){
    return col;
  }
}