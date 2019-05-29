class Queen extends Piece{
  Queen (Tile t, boolean col){
    super(t,col);
  }
  void display(int x, int y) {
    if (col == true) {
      image(queen, x, y);
    } else {
      image (queenW, x, y);
    }
  }
  boolean getColor(){
    return col;
  }
}