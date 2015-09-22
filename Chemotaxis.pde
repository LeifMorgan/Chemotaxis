 //declare bacteria variables here   
 Bacteria [] colony;
 Bacteria small;

 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(500,500);
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
 	int qX, qY;
 	Bacteria()
 	{
 		myX = (int)(Math.random()*500);
 		myY = (int)(Math.random()*500);
 		rX = (int)(Math.random()*500);
		rY = (int)(Math.random()*500);
		tX = (int)(Math.random()*500);
		tY = (int)(Math.random()*500);
		qY = (int)(Math.random()*500);
		qX = (int)(Math.random()*500);
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
 			myX = (int)(Math.random()*500);
 			myY = (int)(Math.random()*500);
 		}
 			//rectangles

 		rX = rX + (int)(Math.random()*3-1.5);
 		rY = rY + (int)(Math.random()*3-1.5);
 		if(rX > mouseX){
 			rX = rX + (int)(Math.random()*3-4);
 		}
 		if(rY > mouseY){
 			rY = rY + (int)(Math.random()*3-4);
 		}
 		if(rY < mouseY){
 			rY = rY + (int)(Math.random()*3);
 		}
 		if(rX < mouseX){
 			rX = rX + (int)(Math.random()*3+1);
 		}
 		if(rX == mouseX && rY == mouseY){
 			rX = (int)(Math.random()*500);
 			rY = (int)(Math.random()*500);
 		}



 			//triangle

 		tX = tX + (int)(Math.random()*3-1.5);
 		tY = tY + (int)(Math.random()*3-1.5);
 		if(tX > mouseX){
 			tX = tX + (int)(Math.random()*3-4);
 		}
 		if(tY > mouseY){
 			tY = tY + (int)(Math.random()*3-4);
 		}
 		if(tY < mouseY){
 			tY = tY + (int)(Math.random()*3+2);
 		}
 		if(tX < mouseX){
 			tX = tX + (int)(Math.random()*3+1);
 		}
 		if(tX == mouseX && tY == mouseY){
 			tX = (int)(Math.random()*500);
 			tY = (int)(Math.random()*500);
 		}


 			//quad
 		qX = qX + (int)(Math.random()*3-1.5);
 		qY = qY + (int)(Math.random()*3-1.5);
 		if(qX > mouseX){
 			qX = qX + (int)(Math.random()*3-4);
 		}
 		if(qY > mouseY){
 			qY = qY + (int)(Math.random()*3-4);
 		}
 		if(qY < mouseY){
 			qY = qY + (int)(Math.random()*3+1);
 		}
 		if(qX < mouseX){
 			qX = qX + (int)(Math.random()*3+1);
 		}
 		if(qX == mouseX && qY == mouseY){
 			qX = (int)(Math.random()*500);
 			qY = (int)(Math.random()*500);
 		}



 			if(mousePressed){
 				myX = myX + (int)(Math.random()*3-7);
 				myY = myY + (int)(Math.random()*3-7);

			 	rX = rX + (int)(Math.random()*3+4);
 				rY = rY + (int)(Math.random()*3-4);

			 	tX = tX + (int)(Math.random()*3-8);
 				tY = tY + (int)(Math.random()*3+5);

 				qX = qX + (int)(Math.random()*3+5);
 				qY = qY + (int)(Math.random()*3+5);
 			
 			}

 			if(keyPressed){
 				myX = (int)(Math.random()*500);
		 		myY = (int)(Math.random()*500);
		 		rX = (int)(Math.random()*500);
				rY = (int)(Math.random()*500);
				tX = (int)(Math.random()*500);
				tY = (int)(Math.random()*500);
				qY = (int)(Math.random()*500);
				qX = (int)(Math.random()*500);
 			}
 	}
 	void show()
 	{
 		fill(51,255,153,35);
 		strokeWeight(1);

		stroke(255,0,255);
 		quad(qX,qY,qX+4,qY-4,qX+8,qY,qX+4,qY+4);

 		stroke(51,255,153);
 		ellipse(myX,myY,6,6);



 		stroke(255,255,0);
 		rect(rX,rY,6,6);

 		stroke(0,0,255);
 		triangle(tX,tY,tX+4,tY+6,tX+8,tY);

 		

 		fill(255);
 		text("food",mouseX-10,mouseY);
 	}

 }    

