class Knight extends Piece{
  Knight (Tile t, boolean col){
    super(t,col);
  }
  void display() {
    if (col == true) {
      image(knight, t.getX()+20, t.getY()+15);
    } else {
      image (knightW, t.getX()+20, t.getY()+15);
    }
  }
  boolean getColor(){
    return col;
  }
}