abstract class Piece {

  public Tile t;
  public boolean col;
  public Tile[] possibles;


  public void move(Tile next) {
    Tile temp = t;
    t = next;
    t.on = this;
    temp.on = null;
  }
  public Piece(Tile a) {
    t = a;
    col = true;
  }
  public String toString() {
    return "Piece At " + t.getx()+" "+t.gety();
  }

  public void display() {
    fill(103, 208, 36);
    ellipse(t.getx()+50, t.gety()+50, 80, 80);
  }

  //returns the tiles a piece can move in
  abstract  public ArrayList<Tile> getpossibles();

  //returns the tiles that are threatening to the piece
  abstract  public ArrayList<Tile> threatning();
  
  //returns color (black or white)
  public boolean getColor() {
    return col;
  }

  //constructor
  Piece(Tile t, boolean col) {
    this.t = t;
    this.col = col;
  }
}
