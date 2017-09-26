Bacteria [] bob; //declare bacteria variables here   
void setup()   
{   
  size(500, 500); 
  bob = new Bacteria[50];
  for (int i = 0; i < bob.length; i++) {
    bob[i] = new Bacteria(234,123,123); //color
  }
  //initialize bacteria variables here
}   
void draw() //move and show the bacteria

{    
  background(0);
   for (int i = 0; i < bob.length; i++) {
    bob[i].move();
    bob[i].show();
  }
}  
class Bacteria    
{     
  int myX, myY;
  color myColor;
  Bacteria(int x, int y, int z)
  { 
    myX = x;
    myY = y;
    myColor = z;
  }
  void move() //random walk
  {
    myX = myX + (int)(Math.random()*3)-2;
    myY = myY + (int)(Math.random()*3)-2;
  }
  void show()
  {
    fill (myColor);
    ellipse(myX, myY, 10, 10);
  }
}    