 //declare bacteria variables here   
 Bacteria small;
 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(300,300);
 	small = new Bacteria();  
 }   
 void draw()   
 {    
 	background(0);
  	small.show();
  	small.walk();
 }  


 class Bacteria    
 {     
 	//lots of java!   
 	int myX, myY;
 	Bacteria()
 	{
 		myX = (int)(Math.random()*300);
 		myY = (int)(Math.random()*300);
 	}
 	void walk()
 	{
 		myX = myX + (int)(Math.random()*3-1);
 		myY = myY + (int)(Math.random()*3-1);
 	}
 	void show()
 	{
 		fill(0,50,200,10);
 		strokeWeight(1);
 		stroke(0,0,140);
 		ellipse(myX,myY,10,10);
 	}

 }    