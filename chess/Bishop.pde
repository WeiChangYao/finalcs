class Bishop extends Piece{
  Bishop (Tile t, boolean col){
    super(t,col);
  }
void display() {
   if(col)
   fill(103,208,36);
   else
   fill(215,25,25);
   ellipse(t.getx()+50,t.gety()+50,80,80);
   fill(255);
   ellipse(t.getx()+50,t.gety()+50,50,50);
   if(col)
   fill(103,208,36);
   else
   fill(215,25,25);
   ellipse(t.getx()+50,t.gety()+50,20,20);
  }
  boolean getColor(){
    return col;
  }
public ArrayList<Tile> getpossibles(){
     ArrayList<Tile> tbr = new ArrayList<Tile>();
     int xloc = t.getx()/100;
     int yloc = t.gety()/100;
     //Adds possibles to up and right
     boolean NoPiece = true;
     int tempx = xloc+1;
     int tempy = yloc+1;
     while(tempx<=7 && tempy<=7 && NoPiece)
     {
       if(board[tempx][tempy].on==null)
       {
         tbr.add(board[tempx][tempy]);
         tempx++;
         tempy++;
       }
       else
       {
         NoPiece = false;
         if(board[tempx][tempy].on.col!=this.col)
         {
           tbr.add(board[tempx][tempy]);
         }
       } 
     }
    //Adds possibles to left down
     NoPiece = true;
     tempx = xloc-1;
     tempy = yloc-1;
     while(tempx>=0 && tempy>=0 && NoPiece)
     {
       if(board[tempx][tempy].on==null)
       {
         tbr.add(board[tempx][tempy]);
         tempx--;
         tempy--;
       }
       else
       {
         NoPiece = false;
         if(board[tempx][tempy].on.col!=this.col)
         {
           tbr.add(board[tempx][tempy]);
         }
       } 
     }
    //Adds possibles to top and left
     NoPiece = true;
     tempx = xloc-1;
     tempy = yloc+1;
     while(tempy<=7 && tempx>=0 && NoPiece)
     {
       if(board[tempx][tempy].on==null)
       {
         tbr.add(board[tempx][tempy]);
         tempy++;
         tempx--;
       }
       else
       {
         NoPiece = false;
         if(board[tempx][tempy].on.col!=this.col)
         {
           tbr.add(board[tempx][tempy]);
         }
       } 
     }
    //Adds possibles to bottom and right
     NoPiece = true;
     tempx = xloc+1;
     tempy = yloc-1;
     while(tempy>=0 && tempx<=7 && NoPiece)
     {
       if(board[tempx][tempy].on==null)
       {
         tbr.add(board[tempx][tempy]);
         tempy--;
         tempx++;
       }
       else
       {
         NoPiece = false;
         if(board[tempx][tempy].on.col!=this.col)
         {
           tbr.add(board[tempx][tempy]);
         }
       } 
     }
     return tbr;
 }
}
