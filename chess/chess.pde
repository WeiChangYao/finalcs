import java.awt.Point;
import java.awt.MouseInfo;
import java.util.*;
Tile[][] board;
Tile start;
Tile end;
Piece b;
Set<Tile> threatsTrue= new HashSet<Tile>(); 
Set<Tile> threatsFalse= new HashSet<Tile>(); 
Set<Tile> LegalTrue= new HashSet<Tile>(); 
Set<Tile> LegalFalse= new HashSet<Tile>(); 
boolean inCheckTrue = false;
boolean inCheckFalse = false;
Tile threattoTrue;
Tile threattoFalse;
ArrayList<Tile> Holder;
boolean inmove = false;
Tile KT;
Tile KF;
PImage pawn;
PImage knight;
PImage queen;
PImage king;
PImage rook;
PImage bishop;
PImage pawnW;
PImage knightW;
PImage queenW;
PImage kingW;
PImage rookW;
PImage bishopW;
PImage kingR;
void setup() {
  pawn = loadImage("pawn.png");
  knight = loadImage("knight.png");
  queen = loadImage("queen.png");
  king = loadImage("king.png");
  rook = loadImage("rook.png");
  bishop = loadImage("bishop.png");
  pawnW = loadImage("pawnW.png");
  knightW = loadImage("knightW.png");
  queenW = loadImage("queenW.png");
  kingW = loadImage("kingW.png");
  rookW = loadImage("rookW.png");
  bishopW = loadImage("bishopW.png");
  kingR = loadImage("kingR.png");
  // setting up the board
  size(800, 800);
  background(255);
  smooth();
  noStroke();
  boolean prev = true;
  board =  new Tile[8][8];
  for (int i = 0; i < 8; i++)
  {
    for (int j = 0; j < 8; j++)
    {
      board[i][j] = new Tile(i*100, j*100, prev);
      prev=!prev;
      if (i!=0||j!=0)
        board[i][j].display();
    }
    prev= !prev;
  }


  // This is the block for Creating all of the Pawns appropriatly!
  for (int i = 0; i<8; i++) {
    Tile f = board[i][1];
    Pawn a = new Pawn(f, true);
    f.addPiece(a);
    f.display();
  }
  for (int i = 0; i<8; i++) {
    Tile f = board[i][6];
    Pawn a = new Pawn(f, false);
    f.addPiece(a);
    f.display();
  }

  //Block For Creating All Knights Appropriatly
  Tile f = board[1][0];
  Knight a = new Knight(f, true);
  f.addPiece(a);
  f.display();
  Tile f1 = board[6][0];
  Knight a1 = new Knight(f1, true);
  f1.addPiece(a1);
  f1.display();
  Tile f2 = board[1][7];
  Knight a2 = new Knight(f2, false);
  f2.addPiece(a2);
  f2.display();
  Tile f3 = board[6][7];
  Knight a3 = new Knight(f3, false);
  f3.addPiece(a3);
  f3.display();

  //Block For Creating All Rooks Appropriatly
  Tile R = board[0][0];
  Rook b = new Rook(R, true);
  R.addPiece(b);
  R.display();
  Tile R2 = board[7][0];
  Rook b2 = new Rook(R2, true);
  R2.addPiece(b2);
  R2.display();
  Tile R3 = board[0][7];
  Rook b3 = new Rook(R3, false);
  R3.addPiece(b3);
  R3.display();
  Tile R4 = board[7][7];
  Rook b4 = new Rook(R4, false);
  R4.addPiece(b4);
  R4.display();

  //This is the block for creating Pishops appropriatley  
  Tile C = board[2][0];
  Bishop S = new Bishop(C, true);
  C.addPiece(S);
  C.display();
  Tile C1 = board[5][0];
  Bishop S1 = new Bishop(C1, true);
  C1.addPiece(S1);
  C1.display();
  Tile C2 = board[2][7];
  Bishop S2 = new Bishop(C2, false);
  C2.addPiece(S2);
  C2.display();
  Tile C3 = board[5][7];
  Bishop S3 = new Bishop(C3, false);
  C3.addPiece(S3);
  C3.display();

  // THis Block Creates Queens Appropriatly
  Tile Q1 = board[3][0];
  Tile Q2 = board[3][7];
  Queen w1 = new Queen(Q1, true);
  Queen w2 = new Queen(Q2, false);
  Q1.addPiece(w1);
  Q2.addPiece(w2);
  Q1.display();
  Q2.display();

  // This Block Createst hte Kings appropriatly
  KT = board[4][0];
  KF = board[4][7];
  King p1 = new King(KT, true);
  King p2 = new King(KF, false);
  KT.addPiece(p1);
  KF.addPiece(p2);
  KT.display();
  KF.display();
  //This following keeps up to date on if check the threats;
  for (int i = 0; i < 8; i++)
  {
    for (int j = 0; j < 8; j++)
    {
      if (board[i][j].on!=null)
      {
        if (board[i][j].on.col)
        {
          ArrayList<Tile> poss = board[i][j].on.threatning();
          for (Tile temp : poss)threatsTrue.add(temp);
        } else
        {
          ArrayList<Tile> poss = board[i][j].on.threatning();
          for (Tile temp : poss)threatsFalse.add(temp);
        }
      }
    }
  }
}

//This part turns the king red when in check
void draw() {
  /*if (inCheckTrue) {
    image(kingR, KT.getX()+20, KT.getY()+15);
  } else {
    image(king, KT.getX()+20, KT.getY()+15);
  }
  if (inCheckFalse) {
    image(kingR, KF.getX()+20, KF.getY()+15);
  } else {
    image(kingW, KF.getX()+20, KF.getY()+15);
  }*/
}
void mouseClicked() {
  if (!inmove)
  {
    start = board[mouseX/100%8][mouseY/100%8];
    if (start.on!=null) {
      start.change();
      Holder = start.on.getpossibles();
      for (Tile a : Holder) {
        a.highlight();
      }
      inmove = true;
      System.out.println("move started");
    }
  } else
  {
    end = board[mouseX/100%8][mouseY/100%8];
    int tx = end.getx();
    int ty = end.gety();
    boolean possible = false;
    for (Tile a : Holder)
    {
      if (a == end) possible = true;
    }
    if (start!=end && possible) {
      Piece tempPiece = start.on;
      for (Tile a : Holder) {
        a.display();
      }
      if (tempPiece instanceof Pawn) {
        if (((Pawn)tempPiece).firstmove)((Pawn)tempPiece).firstmove = false;
      }
      for (Tile a : Holder)
      {
        a.display();
      }
      Holder = null;
      start.on = null;
      tempPiece.t= end;
      System.out.println(tempPiece.t.getx()+"  "+tempPiece.t.gety());
      end.on=tempPiece;
      if (end.on instanceof King && end.on.col)KT = end;
      if (end.on instanceof King && !end.on.col)KF = end;
      start.display();
      end.display();


      //This following keeps up to date on if check the threats;
      threatsTrue.clear();
      threatsFalse.clear();
      for (int i = 0; i < 8; i++)
      {
        for (int j = 0; j < 8; j++)
        {
          if (board[i][j].on!=null)
          {
            if (board[i][j].on.col)
            {
              //Threats by Team True
              ArrayList<Tile> poss = board[i][j].on.threatning();
              for (Tile temp : poss)threatsTrue.add(temp);
            } else
            {
              //threats by team False
              ArrayList<Tile> poss = board[i][j].on.threatning();
              for (Tile temp : poss)threatsFalse.add(temp);
            }
          }
        }
      }
      if (threatsTrue.contains(KF))
      {
        System.out.println("King False is in Check by " + end.on );
        inCheckFalse = true;
        threattoFalse = end;
      } else
      {
        if (inCheckFalse == true)System.out.println("False King No Longer in Check");
        inCheckFalse = false;
        threattoFalse = null;
      }
      if (threatsFalse.contains(KT))
      {
        System.out.println("King True is in Check by Piece at "  + end.on );
        inCheckTrue = true;
        threattoTrue = end;
      } else
      {
        if (inCheckTrue == true)System.out.println("True King No Longer in Check");
        inCheckTrue = false;
        threattoTrue = null;
      }

      end = null;
      start = null;
      inmove = false;
      System.out.println("move finished" );
    } else {
      start.display();
      inmove=false;
      System.out.println("move ended");
      for (Tile a : Holder)
      {
        a.display();
      }
      Holder = null;
      start = null;
    }
  }
}
