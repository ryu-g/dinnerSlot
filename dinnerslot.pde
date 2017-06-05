import java.util.*;

ArrayList<String> pool;
ArrayList<String> cook;
int i=0;
int roll=-1;
int mode=0;
int command=0;
String pop = "press space";

void setup() {
	pool = new ArrayList<String>();
	cook = new ArrayList<String>();
	size(400,300);
	setPool();
	setCook();
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

void setCook(){
	cook.add("omu-rice");
	cook.add("gyu-dong");
	cook.add("tomato soup");
	cook.add("kara-age");
	cook.add("NABE(kimuchi)");
	cook.add("NABE(syouyu)");
	cook.add("NABE(MISO)");
	cook.add("hanburg");
	cook.add("cha-han");
	cook.add("katsu-dong");
}
void draw() {
	textAlign(CENTER);
	stroke(0);
	textSize(25);
if(mode==0){
	background(128);

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
if(mode==1){
	background(128,128,250);

	text("hold SPASE key", width/2, height/3);
	text("today's dinner is...", width/2, 3*height/7);
	if(keyPressed && key==' '){
		i=int(random(0,cook.size()-1));
		pop =  cook.get(i);
		println(pop);
	}else if(keyPressed && key!=' '){
	text("that is "+key+" key", width/2, 5*height/6);}
	text(pop, width/2, 3*height/4);
	if(roll<0)text("one more?", width/2, 5*height/6);
}
}

void keyPressed() {
	roll=1; //rolling now
	if(command==0&&key=='c')command+=1;else command=0;
	if(command==1&&key=='o')command+=1;else command=0;
	if(command==2&&key=='0')command+=1;else command=0;
	if(command==0&&key=='k'){println("mode: "+mode);mode=1;command=0;}else command=0;
}

void keyReleased(){
	roll=-1;// not rolling
}