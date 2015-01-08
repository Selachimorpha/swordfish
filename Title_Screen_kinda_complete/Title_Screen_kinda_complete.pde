void setup() {
  size(800, 800);
}
void draw() {
  background(125);
  textSize(60);
  text("Selachimorpha", width/2-200, height/2-100);
  fill(0);
  rect(width/2-50, 600, 100, 50); 
  fill(255);
  textSize(40);
  text("Start", width/2-45, 640);
  if (mouseX > width/2+50 && mouseX > width/2-50 && mouseY > 600 && mouseY < 700 && mousePressed) {
  }
}

