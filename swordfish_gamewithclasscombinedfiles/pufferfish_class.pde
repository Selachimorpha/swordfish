class pufferfish {
  PVector loc, vel;
  float sz;
  PImage puffer;



  pufferfish(float x, float y) {
    sz = 100;
    //    loc=new PVector(random(20, 600), random(20, 600));
    vel= new PVector(5, 5);
    puffer = loadImage("pufferfish.png");
    loc = new PVector(random(20, 600), random(20, 600));
  }
  void display() {

    image(puffer, loc.x, loc.y, sz, sz);
  }
  void move() {
    loc.add(vel);
    //    loc.y.add(vel);
    //  vel.add(acc);
  }
  void bounce() { 
    if (loc.x+sz/2 > width || loc.x - sz/2 < 0) {
      vel.x *= -1;
    }
    if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
      vel.y *= -1;
    }
  }
  //  void collideWith(pufferfish other) {
  //    if (loc.dist(other.loc) < sz/2 + other.sz/2) {
  //      {
  //        vel = PVector.sub(loc, other.loc);
  //        vel.normalize();
  //      }
  //    }
  //  }
}

