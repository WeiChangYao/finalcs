class Knight extends Piece {
  Knight (Tile t, boolean col) {
    super(t, col);
  }
  void display() {
    if (col == true) {
      image(knight, t.getX()+20, t.getY()+15);
    } else {
      image (knightW, t.getX()+20, t.getY()+15);
    }
  }
  boolean getColor() {
    return col;
  }
  public ArrayList<Tile> getpossibles() {
    ArrayList<Tile> tbr = new ArrayList<Tile>();
    int xloc = t.getx()/100;
    int yloc = t.gety()/100;
    if (xloc>0&&yloc<6&&(board[xloc-1][yloc+2].on==null||board[xloc-1][yloc+2].on.col!=this.col))tbr.add(board[xloc-1][yloc+2]);
    if (xloc<7&&yloc<6&&(board[xloc+1][yloc+2].on==null||board[xloc+1][yloc+2].on.col!=this.col))tbr.add(board[xloc+1][yloc+2]);
    if (xloc<6&&yloc<7&&(board[xloc+2][yloc+1].on==null||board[xloc+2][yloc+1].on.col!=this.col))tbr.add(board[xloc+2][yloc+1]);
    if (xloc<6&&yloc>0&&(board[xloc+2][yloc-1].on==null||board[xloc+2][yloc-1].on.col!=this.col))tbr.add(board[xloc+2][yloc-1]);
    if (xloc<7&&yloc>1&&(board[xloc+1][yloc-2].on==null||board[xloc+1][yloc-2].on.col!=this.col))tbr.add(board[xloc+1][yloc-2]);
    if (xloc>0&&yloc>1&&(board[xloc-1][yloc-2].on==null||board[xloc-1][yloc-2].on.col!=this.col))tbr.add(board[xloc-1][yloc-2]);
    if (xloc>1&&yloc<7&&(board[xloc-2][yloc+1].on==null||board[xloc-2][yloc+1].on.col!=this.col))tbr.add(board[xloc-2][yloc+1]);
    if (xloc>1&&yloc>0&&(board[xloc-2][yloc-1].on==null||board[xloc-2][yloc-1].on.col!=this.col))tbr.add(board[xloc-2][yloc-1]);
    return tbr;
  }
  public ArrayList<Tile> threatning() {
    ArrayList<Tile> tbr = new ArrayList<Tile>();
    int xloc = t.getx()/100;
    int yloc = t.gety()/100;
    if (xloc>0&&yloc<6)tbr.add(board[xloc-1][yloc+2]);
    if (xloc<7&&yloc<6)tbr.add(board[xloc+1][yloc+2]);
    if (xloc<6&&yloc<7)tbr.add(board[xloc+2][yloc+1]);
    if (xloc<6&&yloc>0)tbr.add(board[xloc+2][yloc-1]);
    if (xloc<7&&yloc>1)tbr.add(board[xloc+1][yloc-2]);
    if (xloc>0&&yloc>1)tbr.add(board[xloc-1][yloc-2]);
    if (xloc>1&&yloc<7)tbr.add(board[xloc-2][yloc+1]);
    if (xloc>1&&yloc>0)tbr.add(board[xloc-2][yloc-1]);
    return tbr;
  }
}
