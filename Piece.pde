class Piece{
 
 Tile t;
 boolean col;
 Tile[] possibles;

  
//void move(int x, int y);
 public Piece(Tile a){
   t = a;
   col = true;
 
 }
 
 public void display(){
   fill(103,208,36);
   ellipse(t.getx()+50,t.getx()+50,80,80);
 }
 
// abstract Tile[] possibleMove();
 
 public boolean getColor(){
   return col;
 }
 
 Piece(Tile t, boolean col){
   this.t = t;
   this.col = col;
 }
}