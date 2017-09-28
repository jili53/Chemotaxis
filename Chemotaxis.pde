Bacteria [] aLot; //declare bacteria variables here   
int rgb;
void setup()   
{     
  size(600, 600);//initialize bacteria variables here   
  aLot = new Bacteria[300];
  for (int i = 0; i< aLot.length; i++)
    aLot[i] = new Bacteria();
}   
void draw()   
{    
  background(0);//move and show the bacteria   
  for (int i = 0; i< aLot.length; i++)
  {
    aLot[i].walk();
    aLot[i].show();
  }
}  
class Bacteria    
{     
  int myX, myY; //lots of java!   
  Bacteria()
  {
    myX = (int)(Math.random()*600);
    myY = (int)(Math.random()*600);
  }
  void walk()
  {
    myX = myX + (int)(Math.random()*5)- 2;
    myY = myY + (int)(Math.random()*5) -2;
    if ((mouseX - myX >-100) && (mouseX - myX <0))
    {
      if (((mouseY - myY >-100) && (mouseY - myY <0)) || ((mouseY - myY <100) && (mouseY - myY >0)))
      {
        myX = myX + (int)(Math.random()*10)- 4;
      }
    } 
    else if ((mouseX - myX >0 )&& (mouseX - myX <100))
    {
      if (((mouseY - myY >-100) && (mouseY - myY <0)) || ((mouseY - myY <100) && (mouseY - myY >0)))
      {
        myX = myX + (int)(Math.random()*10)- 5;
      }
    }
    if ((mouseY - myY >-100) && (mouseY - myY <0))
    {
      if (((mouseX - myX >-100) && (mouseX - myX <0)) || ((mouseX - myX >0 )&& (mouseX - myX <100)))
      {
        myY = myY + (int)(Math.random()*10) -4;
      }
    } 
    else if ((mouseY - myY <100) && (mouseY - myY >0))
    {
      if (((mouseX - myX >-100) && (mouseX - myX <0)) || ((mouseX - myX >0 )&& (mouseX - myX <100)))
      {
        myY = myY + (int)(Math.random()*10) -5;
      }
    }
  }
  void show()
  {
    rgb = (int)(Math.random()*256);
    fill(rgb, rgb, 0);
    ellipse(myX, myY, 10, 10);
  }
}    