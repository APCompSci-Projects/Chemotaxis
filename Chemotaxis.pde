 //declare bacteria variables here
 Predator[] bob;
 Prey[] tim;   
 void setup()   
 {     
 //initialize bacteria variables here   
  size(500, 500);
  bob = new Predator[5];
  tim = new Prey[10];
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
 	for (int j = 0; j < bob.length; j++) {
    bob[j].show();
    bob[j].move();
    for (int i = 0; i < tim.length; i++) {
      tim[i].show(); 
      tim[i].move();
      if (dist(bob[j].myX, bob[j].myY, tim[i].myX, tim[i].myY) > 50) {
        bob[j].myX = bob[j].myX + (int)(Math.random()*5)-2;
        bob[j].myY = bob[j].myY + (int)(Math.random()*5)-2;
      } else if ((dist(bob[j].myX, bob[j].myY) >= width) || (dist(bob[j].myX, bob[j].myY) >= height)) {
        bob[j].myX = bob[j].myX+ (int)(Math.random()*100)+20;
        bob[j].myY = bob[j].myY+ (int)(Math.random()*100)+20;
      }
      else if((dist(tim[i].myX, tim[i].myY) >= width) || (dist(tim[i].myX, tim[i].myY) >= height)){
      	tim[i].myX = tim[i].myX+ (int)(Math.random()*100)+20;
        tim[i].myY = tim[i].myY+ (int)(Math.random()*100)+20;
      }
    }
 }
} 

class Predator   
{ 
  int myX, myY, mySize;
  Predator() {
    myX = (int)(Math.random()*250)+30;
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
    myX = (int)(Math.random()*250)+30;
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