class King extends Piece{
  King (Tile t, boolean col){
    super(t,col);
  }
  void display() {
    if (col == true) {
      image(king,t.getX(), t.getY());
    } else {
      image (kingW, t.getX(), t.getY());
    }
  }
  boolean getColor(){
    return col;
  }
}