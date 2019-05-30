class Bishop extends Piece{
  Bishop (Tile t, boolean col){
    super(t,col);
  }
  void display() {
    if (col == true) {
      image(bishop, t.getX()+20, t.getY()+15);
    } else {
      image (bishopW,t.getX()+20, t.getY()+15);
    }
  }
  boolean getColor(){
    return col;
  }
}