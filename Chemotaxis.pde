 //declare bacteria variables here
 Predator[] bob;
 Prey[] tim;   
 void setup()   
 {     
 //initialize bacteria variables here   
  size(500, 500);
  bob = new Predator[1];
  tim = new Prey[1];
  for (int i = 0; i < bob.length; i++) {
    bob[i] = new Predator();
  }
  for (int i = 0; i < tim.length; i++) {
    tim[i] = new Prey(150, 250);
  }
 }   
 void draw()   
 {    
 	background(0);
 	//move and show the bacteria  
 	for (int i = 0; i < tim.length; i++) {
    tim[i].show();
    if (mouseX > tim[i].myX+15 && mouseY > tim[i].myY+15) {
      tim[i].myX = tim[i].myX +(int)(Math.random()*5)-1;
      tim[i].myY = tim[i].myY +(int)(Math.random()*5)-1;
    } else if (mouseX < tim[i].myX+25 && mouseY < tim[i].myY+25) {
      tim[i].myX = tim[i].myX +(int)(Math.random()*5)-3;
      tim[i].myY = tim[i].myY +(int)(Math.random()*5)-3;
    } else {
      tim[i].move();
    }
  } 
 }  

class Predator   
{ 
  int myX, myY, mySize;
  Predator() {
    myX = (int)(Math.random()*250);
    myY = 250;
    mySize = 20;
  }
  void move() {
    myX = myX+(int)(Math.random()*7)-3;
    //myY = myY + (int)(Math.random()*5)-2;
  }
  void show() {
    int colorOne = color(255, 0, 0);
    fill(colorOne);
    ellipse(myX, myY, mySize, mySize);
  }
}    

class Prey
{
  int myX, myY, mySize;
  Prey(int x, int y) {
    myX = (int)(Math.random()*250);
    myY = 250;
    mySize = 20;
    myX = x;
    myY = y;
  }
  void move() {
    myX = myX+(int)(Math.random()*7)-3;
    myY = myY + (int)(Math.random()*5)-2;
  }
  void show() {
    int colorTwo = color(255, 255, 0);
    fill(colorTwo);
    ellipse(myX, myY, mySize, mySize);
  }
}