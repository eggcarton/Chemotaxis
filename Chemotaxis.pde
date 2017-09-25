 Bacteria [] bob;//declare bacteria variables here   
 void setup()   
 {     
  bob = new Bacteria[50];
  for (int i = 0, i < bob.length , i++){
    //finish this
  }
 	size(500,500); //initialize bacteria variables here   
 }   
 void draw()   
 {    
 	//move and show the bacteria   
 }  
 class Bacteria    
 {     
   int myX, myY, myColor; 
   Bacteria(int x, int y, color col){ 
     myX = x;
     myY = y;
     myColor = col;
   }
   void move() //random walk
   {
     myX = myX + (int)(Math.random()*3)-2;
     myY = myY + (int)(Math.random()*3)-2;
   }
   void show()
   {
     
   }
 }    