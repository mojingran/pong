void intro(){
 //image(spaceintro,400,300);
  cr.play();
  congrats.pause();
  congrats.rewind();
 background(#085BBF);
 fill(255);
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
 noFill();
 ellipse(400,300,100,100);
   fill(red);
   noStroke();

  ellipse(XL, YL, 200, 200);
  ellipse(XR, YR, 200, 200);
  fill(blue);
  ellipse(XB, YB, 50, 50);
  if(XB>=775){
    XB=401;
    YB=300;
    vx=0;
    vy=0;
  }
  if(XB<=25){
    XB=400;
    YB=300;
    vx=0;
    vy=0;
  }
  

  if (YB>575||YB<25) {
    vy=vy*-1;
  }
  if(YB>575){
  YB=575;
 vy=-abs(vy);
}
if(YB<25){
 YB=25; 
 vy=abs(vy);
}
  XB=XB+vx;
  YB=YB+vy;
  if (dist(XL, YL, XB, YB)<=125) {
    vx=(XB-XL)*0.1;
    vy=(YB-YL)*0.1;
  }
  if (dist(XR, YR, XB, YB)<=125) {
    vx=(XB-XR)*0.1;
    vy=(YB-YR)*0.1;
  }
   if(XB>=390){ 
      if(YR<YB){
     if(abs(YB-YR)>20){
    YR=YR+9;
  }
   }else{
    if(abs(YB-YR)>20){
     YR=YR-9;
     }
   }
  }
if(XB<=410){
   if(YL<YB){
     if(abs(YB-YL)>20){
    YL=YL+9;
     }
   }else{
     if(abs(YB-YL)>20){
     YL=YL-9;
     }
   }
    }
  fill(green);
  textSize(80);
  text("PONG",400,120);
  fill(green);
  rect(200,330,400,100);//start button
  fill(blue);
  text("START",400,380);
  noFill();
  stroke(255);
  rect(50,330,100,100); //human
  rect(650,330,100,100);//human
  textSize(40);
  println(mouseX,mouseY);
  fill(green);
  text("Human",100,300);
  text("Human",700,300);
  if(lefthuman==true){
    fill(yellow);
   rect(50,330,100,100); 
  }
  if(righthuman==true){
     fill(yellow);
   rect(650,330,100,100);
  }
  if(mouseX>=50&&mouseX<=150&&mouseY>=330&&mouseY<=430){
      fill(green);
   rect(50,330,100,100); 
  }
  if(mouseX>=650&&mouseX<=750&&mouseY>=330&&mouseY<=430){
     fill(green);
   rect(650,330,100,100);
  }
 
  if (YL<=100) {
    YL=100;
  }
  if (YL>=500) {
    YL=500;
  }
  if (YR<=100) {
    YR=100;
  }
  if (YR>=500) {
    YR=500;
  }
 
    
}

void introClicks(){
  if(mouseX>=200&&mouseX<=600&&mouseY>=330&&mouseY<=430){
   mode=play; 
   YL=300;
   YR=300;
   XB=400;
   YB=300;
  }
  if(mouseX>=50&&mouseX<=150&&mouseY>=330&&mouseY<=430){
    if(lefthuman==false){
    lefthuman=true;
   
    }else if(lefthuman==true){
     lefthuman=false; 
      
    }
} 
if(mouseX>=650&&mouseX<=750&&mouseY>=330&&mouseY<=430){
 if(righthuman==false){
    righthuman=true;
    }else if(righthuman==true){
    righthuman=false; 
      
    }
}
}
