class Queen extends Piece{
  Queen (Tile t, boolean col){
    super(t,col);
  }
  void display() {
    if (col == true) {
      image(queen, t.getX()+20, t.getY()+15);
    } else {
      image (queenW, t.getX()+20, t.getY()+15);
    }
  }
  boolean getColor(){
    return col;
  }
}