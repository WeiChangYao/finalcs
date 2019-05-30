class Knight extends Piece{
  Knight (Tile t, boolean col){
    super(t,col);
  }
  void display() {
    if (col == true) {
      image(knight, t.getX(), t.getY());
    } else {
      image (knightW, t.getX(), t.getY());
    }
  }
  boolean getColor(){
    return col;
  }
}