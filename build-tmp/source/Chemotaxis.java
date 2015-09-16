import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Chemotaxis extends PApplet {

 //declare bacteria variables here   
 Bacteria [] colony;
 Bacteria small;

 public void setup()   
 {     
 	//initialize bacteria variables here   
 	size(300,300);
 	small = new Bacteria();  
 	colony = new Bacteria[20];
 	for(int a = 0; a < colony.length; a++){
 		colony[a] = new Bacteria();
 	}
 }   
 public void draw()   
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
 	Bacteria()
 	{
 		myX = (int)(Math.random()*300);
 		myY = (int)(Math.random()*300);
 		rX = (int)(Math.random()*300);
		rY = (int)(Math.random()*300);
		tX = (int)(Math.random()*300);
		tY = (int)(Math.random()*300);
 	}
 	public void walk()
 	{
 			//ellipse

 		myX = myX + (int)(Math.random()*3-1.5f);
 		myY = myY + (int)(Math.random()*3-1.5f);
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

 		rX = rX + (int)(Math.random()*3-1.5f);
 		rY = rY + (int)(Math.random()*3-1.5f);
 		if(rX > mouseX){
 			rX = rX + (int)(Math.random()*3-2);
 		}
 		if(rY > mouseY){
 			rY = rY + (int)(Math.random()*3-2);
 		}
 		if(rY < mouseY){
 			rY = rY + (int)(Math.random()*3-.5f);
 		}
 		if(rX < mouseX){
 			rX = rX + (int)(Math.random()*3-.5f);
 		}

 			//triangle

 		tX = tX + (int)(Math.random()*3-1.5f);
 		tY = tY + (int)(Math.random()*3-1.5f);
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
 	}
 	public void show()
 	{
 		fill(51,255,153,35);
 		strokeWeight(1);

 		stroke(51,255,153);
 		ellipse(myX,myY,10,10);

 		stroke(255,255,0);
 		rect(rX,rY,10,10);

 		stroke(0,0,255);
 		triangle(tX,tY,tX+5,tY+10,tX+10,tY);
 	}

 }    
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Chemotaxis" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
