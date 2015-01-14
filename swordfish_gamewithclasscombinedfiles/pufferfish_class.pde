class pufferfish {
  PVector locp, velp;
  float szp, x, y;
  PImage puffer;
  


  pufferfish(float x, float y) {
    szp = 10;
    locp=new PVector(random(szp, width-szp), random(szp, height-szp));
    velp=PVector.random2D();
    puffer = loadImage("pufferfish.png");
   
  }
  void display() {
    image(puffer, locp.x, locp.y, szp, szp);
  }
  void move() {
    locp.add(velp);
    //  vel.add(acc);
  }
  void bounce() { 
    if (locp.x+szp/2 > width || locp.x - szp/2 < 0) {
      velp.x *= -1;
    }
    if (locp.y + szp/2 > height || locp.y - szp/2 < 0) {
      velp.y *= -1;
    }
  }
  void collideWith(pufferfish other) {
    if (locp.dist(other.locp) < szp/2 + other.szp/2) {
      {
        velp = PVector.sub(locp, other.locp);
        velp.normalize();
      }
    }
  }
}

