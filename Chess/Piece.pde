abstract class Piece{
 
 Tile t;
 boolean col;
  
 //abstract void move(int x, int y);
 
 abstract void display(int x, int y);
 
 //abstract Tile[] possibleMove();
 
 abstract boolean getColor();
 
 Piece(Tile t, boolean col){
   this.t = t;
   this.col = col;
 }
 
}