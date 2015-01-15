//declare variables
//swordfish
PImage s;
PImage sdown;
//pufferfish
PImage pf;
//narwhal
PImage nw;
//location of swordfish
PVector loc;
//size of swordfish
float szx;
float szy;
int shape = 1;
//speed
float speedx;
float speedy;
//changes level
int running = 0;
//background 1
PImage oceanmenu;
//background level 1
PImage bruce;
//background level 2
PImage school;
//life of character
float life = 3;
//background level 3
PImage narwhal;
PImage spongebob;
Player swordfish;
Narwhal[] NW= new Narwhal[3];
//ArrayList<Narwhal> NW = new ArrayList<Narwhal>();
Narwhal NW;
void setup() {
  colorMode(HSB, 360, 100, 100);
  size(1000, 625);
  s = loadImage("swordfish.png");
  sdown = loadImage("swordfish down.png");
  pf = loadImage("pufferfish.png");
  narwhal = loadImage("NarwhalBlue.gif");  
  oceanmenu = loadImage("ocean menu.jpg");
  bruce = loadImage("nemo-shark.jpg");
  school = loadImage("FishSchool.jpg");
  spongebob = loadImage("spongebobstreet.png");

  //change location
  loc = new PVector(0, 3*height/4);

  szx = 200;
  szy = 100;
  swordfish=new Player();
  NW = new Narwhal();
}
void draw() {
  println(life);
  background(oceanmenu);
  textSize(60);
  text("Selachimorpha", width/2-200, height/2-100);
  fill(0);
  rect(width/2-50, 500, 100, 50); 
  fill(360);
  textSize(40);
  text("Start", width/2-45, 540);
  if (mouseX < width/2+50 && mouseX > width/2-50 && mouseY > 500 && mouseY < 550 && mousePressed) {
    running = 1;
  } else if (running == 1) {

    background(bruce);
    textSize(60);
    text("Level 1", 100, 100);
    swordfish.display();
    swordfish.move();
    NW.display();
    
  }

  //    image(s, loc.x, loc.y, szx, szy);

  //level 2
  if (swordfish.nextlevel() == true) {
    running= 2;
  } else if (running == 2) {
    background(school);
    textSize(60);
    text("Level 2", 50, 100);
    swordfish.display();
    swordfish.move();
    if (swordfish.nextlevel() == true) {
      running = 3;
    }
  } else if (running == 3) {
    background(spongebob);
    textSize(60);
    text("Level 3", 50, 100);
    swordfish.display();
    swordfish.move();
  }

  //ways to die
  if (swordfish.loc.y > height) {
    println("went off the bottom of the screen");
    life = 0;
  }
  //death screen
  if (life==0) { 

    background(#0710F0);        
    swordfish.loc.y=3*height/4;
    swordfish.loc.x=0;
    textSize(36);                                                
    text("CONGRATULATIONS!", width/3, height/2);                 
    textSize(18);                                                
    text("You have died ", width/3+110, height/2+40);
    fill(0);
    rect(width/2-50, 500, 100, 50); 
    fill(#FFFFFF);
    textSize(38);
    text("Retry", width/2-45, 540);
  }
  //retry button
  if (mouseX < width/2+50 && mouseX > width/2-50 && mouseY > 500 && mouseY < 550 && mousePressed) {
    life = 3;
    running = 1;
  }
  //test to kill self
  if (keyPressed) {
    if (key == 'l') {
      life = 0;
    }
  }
}

