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
 int rX = (int)(Math.random()*50-1);
 int rY = (int)(Math.random()*50-1);
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
 	Bacteria()
 	{
 		myX = (int)(Math.random()*300);
 		myY = (int)(Math.random()*300);
 	}
 	public void walk()
 	{
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
 	}
 	public void show()
 	{
 		fill(51,255,153,35);
 		strokeWeight(1);
 		stroke(51,255,153);
 		ellipse(myX,myY,10,10);
 		rect(myX + rX,myY+rY,10,10);
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
