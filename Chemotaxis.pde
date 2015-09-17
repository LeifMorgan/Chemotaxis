 //declare bacteria variables here   
 Bacteria [] colony;
 Bacteria small;

 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(300,300);
 	small = new Bacteria();  
 	colony = new Bacteria[100];
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
 	float qX, qY;
 	Bacteria()
 	{
 		myX = 300;
 		myY = 0;
 		rX = 0;
		rY = 300;
		tX = 300;
		tY = 300;
		qY = 0;
		qX = 0;
 	}
 	void walk()
 	{
 			//ellipse

 		myX = myX + (int)(Math.random()*3-1.5);
 		myY = myY + (int)(Math.random()*3-1.5);
 		if(myX >= 300){
 			myX = myX + (int)(Math.random()*3-3);
 		}
 		if(myY >= 300){
 			myY = myY + (int)(Math.random()*3-3);
 		}
 		if(myY <= 0){
 			myY = myY + (int)(Math.random()*3+1);
 		}
 		if(myX <= 0){
 			myX = myX + (int)(Math.random()*3+1);
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
 			rX = 150;
 			rY = 150;
 		}



 			//triangle

 		tX = tX + (int)(Math.random()*3-1.5);
 		tY = tY + (int)(Math.random()*3-1.5);
 		if(tX >= 290){
 			tX = tX + (int)(Math.random()*3-3);
 		}
 		if(tY >= 290){
 			tY = tY + (int)(Math.random()*3-3);
 		}
 		if(tY <= 0){
 			tY = tY + (int)(Math.random()*3+1);
 		}
 		if(tY <= 0){
 			tY = tY + (int)(Math.random()*3+1);
 		}


 			//quad
 		qX = qX + (float)(Math.random()*3-1.5);
 		qY = qY + (float)(Math.random()*3-1.5);
 		if(qX > mouseX){
 			qX = qX + (float)(Math.random()*3-2.5);
 		}
 		if(qY > mouseY){
 			qY = qY + (float)(Math.random()*3-2.5);
 		}
 		if(qY < mouseY){
 			qY = qY + (float)(Math.random()*3-.5);
 		}
 		if(rX < mouseX){
 			qX = qX + (float)(Math.random()*3-.5);
 		}
 		if(qX == mouseX && qY == mouseY){
 			qX = 0;
 			qY = 0;
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

 		stroke(178,102,255);
 		quad(qX,qY,qX+2,qY-2,qX+4,qY,qX+2,qY+2);
 	}

 }    