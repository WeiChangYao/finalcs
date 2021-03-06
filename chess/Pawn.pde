// A Circle is A pawn So far
class Pawn extends Piece {
  boolean firstmove = true;
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

  public ArrayList<Tile> getpossibles() {
    ArrayList<Tile> tbr = new ArrayList<Tile>();
    int xloc = t.getx()/100;
    int yloc = t.gety()/100;
    if (col)
    {
      if (yloc<7&&board[xloc][yloc+1].on==null) {
        tbr.add(board[xloc][yloc+1]);
        if (yloc<6&&board[xloc][yloc+2].on==null&&firstmove)tbr.add(board[xloc][yloc+2]);
      }
      if (xloc<7&&yloc<7&&board[xloc+1][yloc+1].on!=null&&board[xloc+1][yloc+1].on.col!=this.col)tbr.add(board[xloc+1][yloc+1]);
      if (xloc>0&&yloc<7&&board[xloc-1][yloc+1].on!=null&&board[xloc-1][yloc+1].on.col!=this.col)tbr.add(board[xloc-1][yloc+1]);
    } else
    {
      if (yloc>0&&board[xloc][yloc-1].on==null) {
        tbr.add(board[xloc][yloc-1]);
        if (yloc>1&&board[xloc][yloc-2].on==null&&firstmove)tbr.add(board[xloc][yloc-2]);
      }
      if (xloc<7&&yloc>0&&board[xloc+1][yloc-1].on!=null&&board[xloc+1][yloc-1].on.col!=this.col)tbr.add(board[xloc+1][yloc-1]);
      if (xloc>0&&yloc>0&&board[xloc-1][yloc-1].on!=null&&board[xloc-1][yloc-1].on.col!=this.col)tbr.add(board[xloc-1][yloc-1]);
    }
    return tbr;
  }
  public ArrayList<Tile> threatning() {
    ArrayList<Tile> tbr = new ArrayList<Tile>();
    int xloc = t.getx()/100;
    int yloc = t.gety()/100;
    if (col)
    {
      if (xloc<7&&yloc<7)tbr.add(board[xloc+1][yloc+1]);
      if (xloc>0&&yloc<7)tbr.add(board[xloc-1][yloc+1]);
    } else
    {
      if (xloc<7&&yloc>0)tbr.add(board[xloc+1][yloc-1]);
      if (xloc>0&&yloc>0)tbr.add(board[xloc-1][yloc-1]);
    }
    return tbr;
  }
}
