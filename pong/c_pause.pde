void pause(){
  cr.pause();
   background(#085BBF);
 fill(255);
 stroke(255);
rect(0,0,800,5);
rect(0,0,5,600);
rect(0,595,800,5);
rect(795,0,5,600);
 
 line(5,300,795,300);
 line(400,5,400,595);
 line(5,5,5,595);
 line(795,5,795,595);
 line(5,5,795,5);
 line(5,595,795,595);
 //line();
 //line();
 noStroke();
 noFill();
 ellipse(400,300,100,100);
  textSize(40);
  text("scoreLeft:"+scoreL,200,50);
  text("scoreRight:"+scoreR,600,50);
    textSize(80);
    if(countdown>=0){
  text(countdownDisplay, 400, 200);
    }
  fill(255);
  fill(red);
  ellipse(XL, YL, 200, 200);
  ellipse(XR, YR, 200, 200);
  fill(blue);
  ellipse(XB, YB, 50, 50);
  image(pausebutton,40,560);
  fill(green);
  rect(200,250,400,100);
    fill(255);
  text("continue",400,290);

}

void pauseClicks(){
  if(mouseX>=200&&mouseX<=600&&mouseY>=250&&mouseY<=350){
   mode=play; 
   cr.play();
  }
  
}
