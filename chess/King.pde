class King extends Piece{
  King (Tile t, boolean col){
    super(t,col);
  }
  void display() {
   if(col)
   fill(103,208,36);
   else
   fill(215,25,25);
   rectMode(CENTER);
   rect(t.getx()+50,t.gety()+50,45,45);
   rectMode(CORNER);
  }
  boolean getColor(){
    return col;
  }
   public ArrayList<Tile> getpossibles(){
       ArrayList<Tile> tbr = new ArrayList<Tile>();
     int xloc = t.getx()/100;
     int yloc = t.gety()/100;

     
     return tbr;
 }
}
