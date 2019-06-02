abstract class Piece{
 
 public Tile t;
 public boolean col;
 public Tile[] possibles;

  
public void move(Tile next){
  Tile temp = t;
  t = next;
  t.on = this;
  temp.on = null;
}
 public Piece(Tile a){
   t = a;
   col = true;
 
 }
 
 public void display(){
   fill(103,208,36);
   ellipse(t.getx()+50,t.gety()+50,80,80);
 }
 
abstract  public ArrayList<Tile> getpossibles();
 public boolean getColor(){
   return col;
 }
 
 Piece(Tile t, boolean col){
   this.t = t;
   this.col = col;
 }
}
