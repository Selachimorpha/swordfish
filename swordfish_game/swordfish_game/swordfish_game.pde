PImage s;
PImage sdown;
PImage pf;
PImage nw;
float x = 0;
float y = 500;
PVector loc;
float szx;
float szy;
float speedx;
float speedy;
int running = 0;
PImage oceanmenu;
PImage bruce;
PImage school;
PImage spongebob;
Player swordfish;
void setup() {
  colorMode(HSB, 360, 100, 100);
  size(1000, 625);
  s = loadImage("swordfish.png");
  sdown = loadImage("swordfish down.png");
  pf = loadImage("pufferfish.png");
  nw = loadImage("narwhal.png");
  oceanmenu = loadImage("ocean menu.jpg");
  bruce = loadImage("nemo-shark.jpg");
  school = loadImage("FishSchool.jpg");
  spongebob = loadImage("spongebobstreet.png");
  loc = new PVector(0, 3*height/4);
  szx = 200;
  szy = 100;
  swordfish=new Player();
}
void draw() {
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
  }

  if (running == 1) {

    background(bruce);
    textSize(60);
    text("Level 1", 100, 100);
    swordfish.display();
    swordfish.move();
  }

  //    image(s, loc.x, loc.y, szx, szy);

  if (swordfish.nextlevel() == true) {
    running= 2;
  }
  if (running == 2) {
    background(school);
    swordfish.display();
    swordfish.move();
    if (swordfish.nextlevel() == true) {
      running = 3;
    }
  }
  if (running == 3) {
    background(spongebob);
    swordfish.display();
    swordfish.move();
  }
}



//class swordfish {
//  PVector loc;
//  float sz;
//
//  swordfish(float x, float y) {
//    loc = new PVector(0, height/4);
//    sz = 100;
//  }
//  void display() {
//    image(s, loc.x, loc.y, sz, sz);
//  }
//}

