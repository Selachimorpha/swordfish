PImage s;
PImage sdown;
PImage pf;
PImage nw;
float x = 0;
float y = 500;

void setup() {
  size(800, 800);
  s = loadImage("swordfish.png");
  sdown = loadImage("swordfish down.png");
  pf = loadImage("pufferfish.png");
  nw = loadImage("narwhal.png");
}
void draw() {
}

class swordfish {
  PVector loc;
  float sz;

  swordfish(float x, float y) {
    loc = new PVector(0, height/4);
    sz = 100;
  }
  void display() {
    image(s, loc.x, loc.y, sz, sz);
  }
}

