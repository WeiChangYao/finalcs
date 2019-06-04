class Rook extends Piece{
  Rook (Tile t, boolean col){
    super(t,col);
  }
  void display() {
    if (col == true) {
      image(rook,t.getX()+20, t.getY()+15);
    } else {
      image (rookW, t.getX()+20, t.getY()+15);
    }
  }
  boolean getColor(){
    return col;
  }
  public ArrayList<Tile> getpossibles(){
     ArrayList<Tile> tbr = new ArrayList<Tile>();
     int xloc = t.getx()/100;
     int yloc = t.gety()/100;
     //Adds possibles to right
     boolean NoPiece = true;
     int tempx = xloc+1;
     int tempy = yloc;
     while(tempx<=7 && NoPiece)
     {
       if(board[tempx][tempy].on==null)
       {
         tbr.add(board[tempx][tempy]);
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
    //Adds possibles to left
     NoPiece = true;
     tempx = xloc-1;
     tempy = yloc;
     while(tempx>=0 && NoPiece)
     {
       if(board[tempx][tempy].on==null)
       {
         tbr.add(board[tempx][tempy]);
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
    //Adds possibles to top
     NoPiece = true;
     tempx = xloc;
     tempy = yloc+1;
     while(tempy<=7 && NoPiece)
     {
       if(board[tempx][tempy].on==null)
       {
         tbr.add(board[tempx][tempy]);
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
    //Adds possibles to bottom
     NoPiece = true;
     tempx = xloc;
     tempy = yloc-1;
     while(tempy>=0 && NoPiece)
     {
       if(board[tempx][tempy].on==null)
       {
         tbr.add(board[tempx][tempy]);
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
     return tbr;
 }
 
public ArrayList<Tile> threatning(){
 ArrayList<Tile> tbr = new ArrayList<Tile>();
     int xloc = t.getx()/100;
     int yloc = t.gety()/100;
     //Adds possibles to right
     boolean NoPiece = true;
     int tempx = xloc+1;
     int tempy = yloc;
     while(tempx<=7 && NoPiece)
     {
       if(board[tempx][tempy].on==null  || (board[tempx][tempy].on instanceof King && board[tempx][tempy].on.col!=col))
       {
         tbr.add(board[tempx][tempy]);
         tempx++;
       }
       else
       {
         NoPiece = false;
         if(board[tempx][tempy].on.col==this.col)
         {
           tbr.add(board[tempx][tempy]);
         }
       } 
     }
    //Adds possibles to left
     NoPiece = true;
     tempx = xloc-1;
     tempy = yloc;
     while(tempx>=0 && NoPiece)
     {
       if(board[tempx][tempy].on==null || (board[tempx][tempy].on instanceof King && board[tempx][tempy].on.col!=col))
       {
         tbr.add(board[tempx][tempy]);
         tempx--;
       }
       else
       {
         NoPiece = false;
         if(board[tempx][tempy].on.col==this.col)
         {
           tbr.add(board[tempx][tempy]);
         }
       } 
     }
    //Adds possibles to top
     NoPiece = true;
     tempx = xloc;
     tempy = yloc+1;
     while(tempy<=7 && NoPiece)
     {
       if(board[tempx][tempy].on==null || (board[tempx][tempy].on instanceof King && board[tempx][tempy].on.col!=col))
       {
         tbr.add(board[tempx][tempy]);
         tempy++;
       }
       else
       {
         NoPiece = false;
         if(board[tempx][tempy].on.col==this.col)
         {
           tbr.add(board[tempx][tempy]);
         }
       } 
     }
    //Adds possibles to bottom
     NoPiece = true;
     tempx = xloc;
     tempy = yloc-1;
     while(tempy>=0 && NoPiece)
     {
       if(board[tempx][tempy].on==null || (board[tempx][tempy].on instanceof King && board[tempx][tempy].on.col!=col))
       {
         tbr.add(board[tempx][tempy]);
         tempy--;
       }
       else
       {
         NoPiece = false;
         if(board[tempx][tempy].on.col==this.col)
         {
           tbr.add(board[tempx][tempy]);
         }
       } 
     }
     return tbr;
 }
}
