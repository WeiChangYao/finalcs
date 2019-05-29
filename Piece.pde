class Piece{
 
 Tile t;
 boolean col;
 Tile[] possibles;

  
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
   System.out.println("here in display  "+ t.getx()+"  "+t.gety());
   ellipse(t.getx()+50,t.gety()+50,80,80);
   System.out.println("here in display  "+ t.getx()+"  "+t.gety());
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
