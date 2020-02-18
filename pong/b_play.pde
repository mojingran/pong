void play() {
  //image(spacegame,400,300);
stroke(255);
 
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
  textSize(40);
  text("scoreLeft:"+scoreL,200,50);
  text("scoreRight:"+scoreR,600,50);
    textSize(80);
  countdown=countdown-1;
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
noStroke();
  fill(255);
     fill(red);
  ellipse(XL, YL, 200, 200);
  ellipse(XR, YR, 200, 200);
  fill(blue);
  ellipse(XB, YB, 50, 50);

  if(XB>=775){
       bing.rewind();
       bing.play();
    XB=401;
    YB=300;
    vx=0;
    vy=0;
    countdown=180;
   scoreL=scoreL+1; 

  }
  if(XB<=25){
    bing.rewind();
       bing.play();
    XB=400;
    YB=300;
    vx=0;
    vy=0;
    countdown=180;
   scoreR=scoreR+1; 
  }
  
   if (countdown<180&&countdown>0) {
      fill(255);
      text(countdownDisplay, 400, 200);
      vx=0;
      vy=0;
    }
    if (countdown<180&&countdown>120) {
      countdownDisplay=3;
    } else if (countdown<120&&countdown>60) {
      countdownDisplay=2;
    } else if (countdown<60&&countdown>0) {
      countdownDisplay=1;
    } else if (countdown<0&&countdown>-10) {
      text("START!", 400, 200);
      if(countdown<=0&countdown>=-1){
      if(XB==401){
        vx=-15;//-15
        vy=random(-5,-3);
      }else{
        vx=15;
        vy=random(-5,-3);
      }
      }
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
    bloop.rewind();
    bloop.play();
  }
  if (dist(XR, YR, XB, YB)<=125) {
    vx=(XB-XR)*0.1;
    vy=(YB-YR)*0.1;
    bloop.rewind();
    bloop.play();
  }

    if(lefthuman==true&&righthuman==true){
  if (wkey==true) {
    YL=YL-10;
  }
  if (skey==true) {
    YL=YL+10;
  }

  if (upkey==true) {
    YR=YR-10;
  }
  if (downkey==true) {
    YR=YR+10;
  }
    }
    else if(lefthuman==true&&righthuman==false){
  if (wkey==true) {
    YL=YL-10;
  }
  if (skey==true) {
    YL=YL+10;
  }
   if(YR<YB){
         if(abs(YB-YR)>=4){
    YR=YR+5 ;
         }
   }else{
     if(abs(YB-YR)>=4){
     YR=YR-5;
     }
   }
    }
    else if(lefthuman==false&&righthuman==true){
       if (upkey==true) {
    YR=YR-10;
  }
  if (downkey==true) {
    YR=YR+10;
  }
       if(YL<YB){
         if(abs(YB-YL)>=4){
    YL=YL+5 ;
         }
   }else{
     if(abs(YB-YL)>=4){
     YL=YL-5;
     }
   }
    }
    else if(lefthuman==false&&righthuman==false){
       
  if(XB>=390){ 
      if(YR<YB){
     if(abs(YB-YR)>20){
    YR=YR+5;
  }
   }else{
    if(abs(YB-YR)>20){
     YR=YR-5;
     }
   }
  }
if(XB<=410){
   if(YL<YB){
     if(abs(YB-YL)>20){
    YL=YL+5;
     }
   }else{
     if(abs(YB-YL)>20){
     YL=YL-5;
     }
   }
    }
    }
  
  if(scoreL==3){
    mode=5;
  }
  if(scoreR==3){
    mode=6;
  }
  image(pausebutton,40,560);
 
}



void playClicks() {
  if(dist(40,560,mouseX,mouseY)<=30){
   mode=pause; 
  }
}
