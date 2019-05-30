class Rook extends Piece{
  Rook (Tile t, boolean col){
    super(t,col);
  }
  void display() {
    if (col == true) {
      image(rook, t.getX(), t.getY());
    } else {
      image (rookW, t.getX(), t.getY());
    }
  }
  boolean getColor(){
    return col;
  }
}