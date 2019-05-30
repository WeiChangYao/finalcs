class Bishop extends Piece{
  Bishop (Tile t, boolean col){
    super(t,col);
  }
  void display() {
    if (col == true) {
      image(bishop, t.getX(), t.getY());
    } else {
      image (bishopW,t.getX(), t.getY());
    }
  }
  boolean getColor(){
    return col;
  }
}