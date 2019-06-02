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
     ArrayList<Tile> tbr1 = new ArrayList<Tile>();
     int xloc = t.getx()/100;
     int yloc = t.gety()/100;
     if(xloc>0 && yloc>0 && (board[xloc-1][yloc-1].on==null||board[xloc-1][yloc-1].on.col!=this.col))tbr.add(board[xloc-1][yloc-1]);
     if(xloc<7&&yloc<7&& (board[xloc+1][yloc+1].on==null||board[xloc+1][yloc+1].on.col!=this.col))tbr.add(board[xloc+1][yloc+1]);
     if(yloc<7&& (board[xloc][yloc+1].on==null||board[xloc][yloc+1].on.col!=this.col))tbr.add(board[xloc][yloc+1]);
     if(yloc>0&&(board[xloc][yloc-1].on==null||board[xloc][yloc-1].on.col!=this.col))tbr.add(board[xloc][yloc-1]);
     if(xloc<7&& (board[xloc+1][yloc].on==null||board[xloc+1][yloc].on.col!=this.col))tbr.add(board[xloc+1][yloc]);
     if(xloc>0&& (board[xloc-1][yloc].on==null||board[xloc-1][yloc].on.col!=this.col))tbr.add(board[xloc-1][yloc]);
     if(xloc>0&&yloc<7&& (board[xloc-1][yloc+1].on==null||board[xloc-1][yloc+1].on.col!=this.col))tbr.add(board[xloc-1][yloc+1]);
     if(xloc<7&&yloc>0&& (board[xloc+1][yloc-1].on==null||board[xloc+1][yloc-1].on.col!=this.col))tbr.add(board[xloc+1][yloc-1]);
     for(Tile normal : tbr)
     {
       if(col)
       {
         if(!threatsFalse.contains(normal))tbr1.add(normal);
       }
       else
       {
         if(!threatsTrue.contains(normal))tbr1.add(normal);
       }
     }
     return tbr1;
 }
 public ArrayList<Tile> threatning(){
   return getpossibles();
   }
}
