abstract class Piece{
 abstract void move(int x, int y);
 
 abstract void display(int x, int y);
 
 abstract Tile[] possibleMove();
 
 abstract Boolean getColor();
 
}
