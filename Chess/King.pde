class King extends Piece{
  King (Tile t, boolean col){
    super(t,col);
  }
  void display(int x, int y) {
    if (col == true) {
      image(king, x, y);
    } else {
      image (kingW, x, y);
    }
  }
  boolean getColor(){
    return col;
  }
}