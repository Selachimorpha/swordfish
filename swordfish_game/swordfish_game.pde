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

void setup() {
  size(1000, 800);
  s = loadImage("swordfish.png");
  sdown = loadImage("swordfish down.png");
  pf = loadImage("pufferfish.png");
  nw = loadImage("narwhal.png");
  loc = new PVector(0, 3*height/4);
  szx = 200;
  szy = 100;
}
void draw() {
  background(0);
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

