class Pawn extends Piece {
  Pawn (Tile t, boolean col) {
    super(t, col);
  }
  void display() {
    if (col == true) {
      image(pawn, t.getX()+20, t.getY()+15);
    } else {
      image (pawnW, t.getX()+20, t.getY()+15);
    }
  }
  boolean getColor() {
    return col;
  }
}