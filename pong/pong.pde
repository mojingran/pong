import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer bloop;
AudioPlayer cr;
AudioPlayer bing;
AudioPlayer congrats;
final int intro=1;
final int play=2;
final int pause=3;
final int gameover=4;
final int leftW=5;
final int rightW=6;
int mode=intro;
float XL,YL,XR,YR,XB,YB;
float vx,vy;
boolean upkey,downkey,wkey,skey;
color blue=#071EE3;
color green=#13F000;
color red=#FF0505;
color orange=#FF8705;
color purple=#D005FF;
color black=0;
color yellow=#F8FC00;
int countdown,countdownDisplay;
int scoreL,scoreR;
int countdown2;
PImage pausebutton;
PImage spacegame;
PImage spaceintro;
PImage gamewin;
PImage end;
PImage jj;
boolean lefthuman=false;
boolean righthuman=false;
void setup(){
  minim= new Minim(this);
  bloop=minim.loadFile("bloopp.wav");
  bing=minim.loadFile("bloop.mp3");
  size(800,600);
 YL=300;
 YR=300;
 XL=0;
 XR=800;
 XB=400;
 YB=300;
 vx=15;
 vy=8;
 countdown=180;
 countdownDisplay=3;
 scoreL=0;
 scoreR=0;
 countdown2=300;
 congrats=minim.loadFile("congrats.mp3");
  cr=minim.loadFile("cr.mp3");
  end=loadImage("end.jpg");
 spacegame=loadImage("spacegame.jpg");
 spaceintro=loadImage("spaceintro.jpg");
pausebutton=loadImage("pause.png");
gamewin=loadImage("gamewin.png");
jj=loadImage("jj.jpg");
 textAlign(CENTER,CENTER);
 imageMode(CENTER);
 pausebutton.resize(60,60);
 spacegame.resize(800,600);
 spaceintro.resize(800,600);
 gamewin.resize(800,600);

}

void draw(){
  if(mode==intro){
    intro();
  }
  else if(mode==play){
    play();
  }
  else if(mode==pause){
    pause();
  }
  else if(mode==gameover){
    gameover();
  }
  else if(mode==leftW){
    leftW();
  }
   else if(mode==rightW){
    rightW();
  }
}    

void mouseReleased(){
  
  if(mode==intro){
    introClicks();
  }
  else if(mode==play){
    playClicks();
  }
  else if(mode==pause){
    pauseClicks();
  }
  else if(mode==gameover){
    gameoverClicks();
  }
   else if(mode==leftW){
    leftWClicks();
  }
   else if(mode==rightW){
    rightWClicks();
  }
}

void keyPressed(){
  if(keyCode==UP){
    upkey=true;
  }
  if(keyCode==DOWN){
    downkey=true;
  }
  if(key=='w'||key=='W') wkey=true;
  if(key=='s'||key=='S') skey=true;
}

void keyReleased(){
  if(keyCode==UP) upkey =false;
  if(keyCode==DOWN) downkey=false;
  if(key=='w'||key=='W') wkey=false;
  if(key=='s'||key=='S') skey=false;
}
