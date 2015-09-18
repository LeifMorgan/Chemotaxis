 //declare bacteria variables here   
 Bacteria [] colony;
 Bacteria small;

 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(300,300);
 	small = new Bacteria();  
 	colony = new Bacteria[500];
 	for(int a = 0; a < colony.length; a++){
 		colony[a] = new Bacteria();
 	}
 }   
 void draw()   
 {    
 	background(0);
 	for(int a = 0; a < colony.length; a++){
 		 colony[a].show();
 		 colony[a].walk();
 	}

 }  


 class Bacteria    
 {     
 	//lots of java!   
 	int myX, myY;
 	int rX, rY;
 	int tX, tY;
 	int qX, qY;
 	Bacteria()
 	{
 		myX = (int)(Math.random()*300);
 		myY = (int)(Math.random()*300);
 		rX = (int)(Math.random()*300);
		rY = (int)(Math.random()*300);
		tX = (int)(Math.random()*300);
		tY = (int)(Math.random()*300);
		qY = (int)(Math.random()*300);
		qX = (int)(Math.random()*300);
 	}
 	void walk()
 	{
 			//ellipse

 		myX = myX + (int)(Math.random()*3-1.5);
 		myY = myY + (int)(Math.random()*3-1.5);
 		if(myX > mouseX){
 			myX = myX + (int)(Math.random()*3-3);
 		}
 		if(myY > mouseY){
 			myY = myY + (int)(Math.random()*3-3);
 		}
 		if(myY < mouseY){
 			myY = myY + (int)(Math.random()*3+1);
 		}
 		if(myX < mouseX){
 			myX = myX + (int)(Math.random()*3+1);
 		}
		if(myX == mouseX && myY == mouseY){
 			myX = (int)(Math.random()*300);
 			myY = (int)(Math.random()*300);
 		}
 			//rectangles

 		rX = rX + (int)(Math.random()*3-1.5);
 		rY = rY + (int)(Math.random()*3-1.5);
 		if(rX > mouseX){
 			rX = rX + (int)(Math.random()*3-2);
 		}
 		if(rY > mouseY){
 			rY = rY + (int)(Math.random()*3-2);
 		}
 		if(rY < mouseY){
 			rY = rY + (int)(Math.random()*3-.5);
 		}
 		if(rX < mouseX){
 			rX = rX + (int)(Math.random()*3-.5);
 		}
 		if(rX == mouseX && rY == mouseY){
 			rX = (int)(Math.random()*300);
 			rY = (int)(Math.random()*300);
 		}



 			//triangle

 		tX = tX + (int)(Math.random()*3-1.5);
 		tY = tY + (int)(Math.random()*3-1.5);
 		if(tX > mouseX){
 			tX = tX + (int)(Math.random()*3-3);
 		}
 		if(tY > mouseY){
 			tY = tY + (int)(Math.random()*3-3);
 		}
 		if(tY < mouseY){
 			tY = tY + (int)(Math.random()*3+1);
 		}
 		if(tX < mouseX){
 			tX = tX + (int)(Math.random()*3+1);
 		}
 		if(tX == mouseX && tY == mouseY){
 			tX = (int)(Math.random()*300);
 			tY = (int)(Math.random()*300);
 		}


 			//quad
 		qX = qX + (int)(Math.random()*3-1.5);
 		qY = qY + (int)(Math.random()*3-1.5);
 		if(qX > mouseX){
 			qX = qX + (int)(Math.random()*3-3);
 		}
 		if(qY > mouseY){
 			qY = qY + (int)(Math.random()*3-2.5);
 		}
 		if(qY < mouseY){
 			qY = qY + (int)(Math.random()*3-.5);
 		}
 		if(rX < mouseX){
 			qX = qX + (int)(Math.random()*3-.5);
 		}
 		if(qX == mouseX && qY == mouseY){
 			qX = (int)(Math.random()*300);
 			qY = (int)(Math.random()*300);
 		}



 			if(mousePressed){
 				myX = mouseX;
 		myY = mouseY;
 		rX = mouseX;
		rY = mouseY;
		tX = mouseX;
		tY = mouseY;
		qY = mouseY;
		qX = mouseX;
 			}
 	}
 	void show()
 	{
 		fill(51,255,153,35);
 		strokeWeight(1);

 		stroke(51,255,153);
 		ellipse(myX,myY,2,2);

 		stroke(255,255,0);
 		rect(rX,rY,2,2);

 		stroke(0,0,255);
 		triangle(tX,tY,tX+2,tY+4,tX+4,tY);

 		stroke(255,102,255);
 		quad(qX,qY,qX+2,qY-2,qX+4,qY,qX+2,qY+2);

 		fill(255);
 		text("food",mouseX-10,mouseY);
 	}

 }    

