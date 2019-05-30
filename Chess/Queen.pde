class Queen extends Piece{
  Queen (Tile t, boolean col){
    super(t,col);
  }
  void display() {
    if (col == true) {
      image(queen, t.getX(), t.getY());
    } else {
      image (queenW, t.getX(), t.getY());
    }
  }
  boolean getColor(){
    return col;
  }
}