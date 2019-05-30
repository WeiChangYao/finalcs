class Rook extends Piece{
  Rook (Tile t, boolean col){
    super(t,col);
  }
  void display() {
    if (col == true) {
      image(rook,t.getX()+20, t.getY()+15);
    } else {
      image (rookW, t.getX()+20, t.getY()+15);
    }
  }
  boolean getColor(){
    return col;
  }
}