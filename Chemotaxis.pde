Bacteria [] aLot; //declare bacteria variables here   
int rgb;
 void setup()   
 {     
   size(600,600);//initialize bacteria variables here   
   aLot = new Bacteria[300];
   for(int i = 0; i< aLot.length; i++)
   aLot[i] = new Bacteria();
 }   
 void draw()   
 {    
   background(0);//move and show the bacteria   
   for(int i = 0; i< aLot.length; i++)
   {
     aLot[i].walk();
     aLot[i].show();
   }
 }  
 class Bacteria    
 {     
   int myX,myY; //lots of java!   
   Bacteria()
   {
     myX = (int)(Math.random()*500);
     myY = (int)(Math.random()*500);
   }
   void walk()
   {
     if(mouseX < myX)
     myX = myX + (int)(Math.random()*6)- 2;
     else
     myX = myX + (int)(Math.random()*6)- 3;
     if(mouseY < myY)
     myY = myY + (int)(Math.random()*6) -2;
     else
     myY = myY + (int)(Math.random()*6) -3;
   }
   void show()
   {
     rgb = (int)(Math.random()*256);
     fill(rgb,rgb,0);
     ellipse(myX,myY, 10,10);
   }
 }    