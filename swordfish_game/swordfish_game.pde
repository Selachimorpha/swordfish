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
PImage spongebob;
void setup() {
  colorMode(HSB, 360, 100, 100);
  size(1000, 625);
  //load all images
  s = loadImage("swordfish.png");
  sdown = loadImage("swordfish down.png");
  pf = loadImage("pufferfish.png");
  nw = loadImage("narwhal.png");
  oceanmenu = loadImage("ocean menu.jpg");
  bruce = loadImage("nemo-shark.jpg");
  school = loadImage("FishSchool.jpg");
  spongebob = loadImage("spongebobstreet.png");

  //change location
  loc = new PVector(0, 3*height/4);

  szx = 200;
  szy = 100;
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
  //level 1
  if (running == 1) {
    background(bruce);
    textSize(60);
    text("Level 1", 50, 100);
    image(s, loc.x, loc.y, szx, szy);
    if (keyPressed) {
      if (key == 'd') {
        loc.x += 5;
      }
    }
    if (keyPressed) {
      if (key == 'a') {
        loc.x -= 5;
      }
    }
    if (keyPressed) {
      if (key == 'w') {
        loc.y -= 5;
      }
    }
    if (keyPressed) {
      if (key == 's') {
        loc.y += 5;
      }
    }
    if (keyPressed) {
      if (key == ' ') {
        image(sdown, loc.x, loc.y, szx, szy);
      }
    }
    if (loc.x + szx/2 > width) {
      running = 2;
      loc.x = 0;
    }
  }

  //level 2
  else if (running == 2) {
    background(school);
    textSize(60);
    text("Level 2", 50, 100);
    image(s, loc.x, loc.y, szx, szy);
    if (keyPressed) {
      if (key == 'd') {
        loc.x += 5;
      }
    }
    if (keyPressed) {
      if (key == 'a') {
        loc.x -= 5;
      }
    }
    if (keyPressed) {
      if (key == 'w') {
        loc.y -= 5;
      }
    }
    if (keyPressed) {
      if (key == 's') {
        loc.y += 5;
      }
    }
    if (keyPressed) {
      if (key == ' ') {
        image(sdown, loc.x, loc.y, szx, szy);
      }
    }
    if (loc.x + szx/2 > width) {
      running = 3;
      loc.x = 0;
    }
  }

  //level 3
  else if (running == 3) {
    background(spongebob);
    textSize(60);
    text("Level 3", 50, 100);
    image(s, loc.x, loc.y, szx, szy);
    if (keyPressed) {
      if (key == 'd') {
        loc.x += 5;
      }
    }
    if (keyPressed) {
      if (key == 'a') {
        loc.x -= 5;
      }
    }
    if (keyPressed) {
      if (key == 'w') {
        loc.y -= 5;
      }
    }
    if (keyPressed) {
      if (key == 's') {
        loc.y += 5;
      }
    }
    if (keyPressed) {
      if (key == ' ') {
        image(sdown, loc.x, loc.y, szx, szy);
      }
    }
    if (loc.x + szx/2 > width) {
      running = 4;
      loc.x = 0;
    }
  }
  //ways to die
  if (loc.y > height) {
    life = 0;
  }
  //death screen
  if (life==0) {                                                 
    background(#0710F0);                                         
    textSize(36);                                                
    text("CONGRATULATIONS!", width/3, height/2);                 
    textSize(18);                                                
    text("You have died ", width/3+110, height/2+40);
  }
}

