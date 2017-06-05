import java.util.*;

ArrayList<String> pool;
int i=0;
int roll=-1;
String pop = "press space";

void setup() {
	pool = new ArrayList<String>();
	size(400,300);
	setPool();
}


void setPool(){
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

void draw() {
	background(128);
	textAlign(CENTER);
	stroke(0);
	textSize(25);
	text("hold SPASE key", width/2, height/3);
	text("today's dinner is...", width/2, 3*height/7);
	if(keyPressed && key==' '){
		i=int(random(0,pool.size()-1));
		pop =  pool.get(i);
		println(pop);
	}else if(keyPressed && key!=' '){
	text("that is "+key+" key", width/2, 5*height/6);}
	text(pop, width/2, 3*height/4);
	if(roll<0)text("one more?", width/2, 5*height/6);
}

void keyPressed() {// while spase key pressed rikk slot
	roll=1; //rolling now
}

void keyReleased(){
	roll=-1;// not rolling
}