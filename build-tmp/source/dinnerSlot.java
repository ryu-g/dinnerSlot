import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class dinnerSlot extends PApplet {



ArrayList<String> pool;
int i=0;
int roll=-1;
String pop = "press space";

public void setup() {
	pool = new ArrayList<String>();
	
	setPool();
}


public void setPool(){
	pool.add("luckyPierrot");
	pool.add("Pizza Hat");
	pool.add("Mcdnard");
	pool.add("Victoria");
	pool.add("YOSHINOYA");
	pool.add("ra-men");
	pool.add("4th");
	pool.add("NAKA-U");
	pool.add("CARRY");
	pool.add("Japanese SUSHI");
}

public void draw() {
	background(128);
	textAlign(CENTER);
	stroke(0);
	textSize(25);
	text("hold SPASE key", width/2, height/3);
	text("today's dinner is...", width/2, 3*height/7);
	if(keyPressed && key==' '){
		i=PApplet.parseInt(random(0,pool.size()-1));
		pop =  pool.get(i);
		println(pop);
	}else if(keyPressed && key!=' '){
	text("that is "+key+" key", width/2, 5*height/6);}
	text(pop, width/2, 3*height/4);
	if(roll<0)text("one more?", width/2, 5*height/6);
}

public void keyPressed() {// while spase key pressed rikk slot
	roll=1; //rolling now
}

public void keyReleased(){
	roll=-1;// not rolling
}
  public void settings() { 	size(400,300); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "dinnerSlot" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
