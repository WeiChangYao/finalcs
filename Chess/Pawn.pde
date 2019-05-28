class Pawn extends Piece {
  Pawn (Tile t, boolean col) {
    super(t, col);
  }
  void display(int x, int y) {
    if (col == true) {
      image(pawn, x, y);
    } else {
      image (pawnW, x, y);
    }
  }
  boolean getColor() {
    return col;
  }
}