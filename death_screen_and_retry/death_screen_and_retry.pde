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
    loc.x=0;
    loc.y=height;
  }
  //test to kill self
  if (keyPressed) {
    if (key == 'l') {
      life = 0;
    }
  }
