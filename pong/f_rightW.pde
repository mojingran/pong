void rightW(){
  cr.pause();
  cr.rewind();
   
  congrats.play();
  background(black);
   image(end,400,350);
   scoreL=0;
  scoreR=0;
 fill(green);
  text("RIGHT WINS!!",400,200);
   textSize(40);
  text("click anywhere to continue",400,400);
  textSize(80);
  YL=300;
 YR=300;
}


void rightWClicks(){
  mode=intro;
  vx=15;
  vy=8;
}
