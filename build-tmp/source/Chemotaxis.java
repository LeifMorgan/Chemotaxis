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
 Bacteria small;
 public void setup()   
 {     
 	//initialize bacteria variables here   
 	size(300,300);
 	small = new Bacteria();  
 }   
 public void draw()   
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
 	public void walk()
 	{
 		myX = myX + (int)(Math.random()*3-1);
 		myY = myY + (int)(Math.random()*3-1);
 	}
 	public void show()
 	{
 		fill(0,50,200,10);
 		strokeWeight(1);
 		stroke(0,0,140);
 		ellipse(myX,myY,10,10);
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
