Bacteria [] bob; //declare bacteria variables here   
void setup()   
{   
  size(500, 500); 
  bob = new Bacteria[5000];
  for (int i = 0; i < bob.length; i++) {
    bob[i] = new Bacteria(); //color
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
  int myX, myY, myColor;
  Bacteria()
  { 
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void move() //random walk
  {
    if (mousePressed == true)
    {
      myX = myX + (int)(Math.random()*40)-20;
      myY = myY + (int)(Math.random()*40)-20;
    } else
    {
      myX = myX + (int)(Math.random()*5)-2;
      myY = myY + (int)(Math.random()*5)-2;
    }
  }
  void show()
  {
    fill (myColor);
    noStroke();
    ellipse(myX, myY, 5, 5);
  }
}    