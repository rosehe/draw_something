import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
float x, y;
PFont ourFont;

int partCount=1;
int tsize=50;
int Score = 0;
String ScoreText;
PImage guide;
PImage pikachu;
PImage moon;
PImage gangnam;
PImage starfish;
PImage totoro;
PImage fish;
PImage finish;

String [] yourWords  = {
  "1.starfish            2.star             3.seaweed", 
 "1.pizza              2.moon              3.pie", 
"1.eight              2.hourglass         3.fish",
"1.bunny           2.totoro          3.bean bag couch",
"1.tree            2.dubstep         3.gangnam style",
"1.pikachu            2.rock              3.cloud"
};     

void setup() {
  size(600, 600);
  ourFont=loadFont("TrebuchetMS-32.vlw");
  textFont(ourFont);
  guide = loadImage("rules.png");
  fish = loadImage("fish.png");
  gangnam = loadImage("gangnam style.png");
  moon = loadImage("moon.png");
  pikachu = loadImage("pikachu.png");
  starfish = loadImage("starfish.png");
  totoro = loadImage("totoro.png");
  finish = loadImage("finish.png");
  println(Arduino.list()); 
  arduino = new Arduino(this, Arduino.list()[0], 57600); 
  x = width/2;
  y = height/2;
}


void draw() {
   arduino.pinMode(6, Arduino.OUTPUT);
  arduino.digitalWrite(6, Arduino.HIGH);
  if (partCount==1) {
    background(250);
    image(guide, 0, 0, width, height);
    if (keyPressed) {
      if (key== ' ' ) {
        partCount=3; 
        background(250);
      }
    }
  }
  if (partCount==2) {
    part2();
  }
  if (partCount==3) {
    part3();
  }
  if (partCount==4) {
    part4();
  }
  if (partCount==5) {
    part5();
  }
  if (partCount==6) {
    part6();
  }
  if (partCount==7) {
    part7();
  }
  if (partCount==8) {
    part8();
  }
  if (partCount==9) {
    part9();
  }
  if (partCount==10) {
    part10();
  }
  if (partCount==11) {
    part11();
  }
  if (partCount==12) {
    part12();
  }
  if (partCount==13) {
    part13();
  }
  if (partCount==14) {
    part14();
  }
  if (partCount==15) {
    part15();
  }
  if (partCount==16) {
    part16();
  }
  if (partCount==17) {
    part17();
  }
  if (partCount==18) {
    part18();
  }
  if (partCount==19) {
    part19();
  }
  if (partCount==20) {
    part20();
  }
  if (partCount==21) {
    part21();
  }
  if (partCount==22) {
    part22();
  }
  if (partCount==23) {
    part23();
  }
  if (partCount==24) {
    part24();
  }
  if (partCount==25) {
    part25();
  }
  if (partCount==26) {
    part26();
  }
  if (partCount==27) {
    part27();
  }
  if (partCount==28) {
    part28();
  }
  if (partCount==29) {
    part29();
  }
  if (partCount==30) {
    part30();
  }
  if (partCount==31) {
    part31();
  }
  
}//end of draw
/////////////////////////////////
void part3() {
  background(250);
 image(starfish, 0, 0, width, height);
  if (keyPressed) {
    if (key== ENTER) {
      partCount=2; 
      background(250);
    }
  }
}

void part2() {

  fill(149, 217, 247);
  rect(x, y, 15, 15);

  if (arduino.analogRead(1)>80) {
    for (int i =0; i < 1; i++) { 
      x++;
    }
  } 
  ////////////////////////////// 
  if (arduino.analogRead(2)>80) {
    for (int i = 0; i < 1; i++) {
      y--;
    }
  }
  ///////////////////////////////
  if (arduino.analogRead(3)>80) {
    for (int i = 0; i < 1; i++) {
      y++;
    }
  }
  /////////////////////////////////////
  if (arduino.analogRead(4)>80) {
    for (int i = 0; i < 1; i++) {
      x--;
    }
  }
  if (keyPressed) {
    if (key=='e') {
      partCount=4;
    }
  }
  fill(0);
  textSize(20);
  text("PRESS E WHEN FINISHED",370,30);
}

void part4() {
  //background(250);
  fill(0);
  textSize(23);
  text(yourWords[0], 80, 580); 
  if (keyPressed){
    if( key =='1'){
    partCount=5;
  }
  if(key=='2'||key=='3') {
    partCount=13;
  }
  }
}

///////////////////////////////////////////////false
void part13() {
  background(250);
  fill(0);
  textSize(tsize);
  text("WRONG ANSWER", 200, 300);
  image(finish, 0, 0, width, height);
  arduino.pinMode(4, Arduino.OUTPUT);
   arduino.digitalWrite(4, Arduino.HIGH);
  if (keyPressed) {
    if (key== 'r') {
      partCount=6; 
      background(250);
      arduino.digitalWrite(4, Arduino.LOW);
    }
  }
}/////////////////////////////true
  void part5() {
  background(250);
  fill(0);
  textSize(tsize);
  text("CORRECT ANSWER", 200, 300);
  image(finish, 0, 0, width, height);
  arduino.pinMode(5, Arduino.OUTPUT);
   arduino.digitalWrite(5, Arduino.HIGH);
  if (keyPressed) {
    if (key== 'r') {
      partCount=6; 
      background(250);
      arduino.digitalWrite(5, Arduino.LOW);
    }
  }
}
//////////////////////////////////////end part5
/////////////////////////////////////////////////end of first

void part6() {
  background(250);
 image(moon, 0, 0, width, height);
  if (keyPressed) {
    if (key== ENTER) {
      partCount=7; 
      background(250);
    }
  }
}

void part7() {

  fill(149, 217, 247);
  rect(x, y, 15, 15);

  if (arduino.analogRead(1)>80) {
    for (int i =0; i < 1; i++) { 
      x++;
    }
  } 
  ////////////////////////////// 
  if (arduino.analogRead(2)>80) {
    for (int i = 0; i < 1; i++) {
      y--;
    }
  }
  ///////////////////////////////
  if (arduino.analogRead(3)>80) {
    for (int i = 0; i < 1; i++) {
      y++;
    }
  }
  /////////////////////////////////////
  if (arduino.analogRead(4)>80) {
    for (int i = 0; i < 1; i++) {
      x--;
    }
  }
  if (keyPressed) {
    if (key=='e') {
      partCount=8;
    }
  }
  fill(0);
  textSize(20);
  text("PRESS E WHEN FINISHED",370,30);
}

void part8() {
  //background(250);
  fill(0);
  textSize(23);
  text(yourWords[1], 80, 580); 
  if (keyPressed) {
    if (keyPressed){
    if( key =='2'){
    partCount=9;
  }
  if(key=='1'||key=='3') {
    partCount=14;
  }
  }
  }
}

///////////////////////////////////////////////false
void part14() {
  background(250);
  fill(0);
  textSize(tsize);
  text("WRONG ANSWER", 200, 300);
  image(finish, 0, 0, width, height);
  arduino.pinMode(4, Arduino.OUTPUT);
   arduino.digitalWrite(4, Arduino.HIGH);
  if (keyPressed) {
    if (key== 'r') {
      partCount=10; 
      background(250);
       arduino.digitalWrite(4, Arduino.LOW);
    }
  }
}/////////////////////////////true
  void part9() {
  background(250);
  fill(0);
  textSize(tsize);
  text("CORRECT ANSWER", 200, 300);
  image(finish, 0, 0, width, height);
  arduino.pinMode(5, Arduino.OUTPUT);
   arduino.digitalWrite(5, Arduino.HIGH);
  if (keyPressed) {
    if (key== 'r') {
      partCount=10; 
      background(250);
      arduino.digitalWrite(5, Arduino.LOW);
    }
  }
}
/////////////////////////////////////////////////////////end of second

void part10() {
  background(250);
 image(fish, 0, 0, width, height);
  if (keyPressed) {
    if (key== ENTER) {
      partCount=11; 
      background(250);
    }
  }
}

void part11() {

  fill(149, 217, 247);
  rect(x, y, 15, 15);

  if (arduino.analogRead(1)>80) {
    for (int i =0; i < 1; i++) { 
      x++;
    }
  } 
  ////////////////////////////// 
  if (arduino.analogRead(2)>80) {
    for (int i = 0; i < 1; i++) {
      y--;
    }
  }
  ///////////////////////////////
  if (arduino.analogRead(3)>80) {
    for (int i = 0; i < 1; i++) {
      y++;
    }
  }
  /////////////////////////////////////
  if (arduino.analogRead(4)>80) {
    for (int i = 0; i < 1; i++) {
      x--;
    }
  }
  if (keyPressed) {
    if (key=='e') {
      partCount=12;
    }
  }
  fill(0);
  textSize(20);
  text("PRESS E WHEN FINISHED",370,30);
}

void part12() {
  //background(250);
  fill(0);
  textSize(23);
  text(yourWords[2], 80, 580); 
   if (keyPressed) {
    if (keyPressed){
    if( key =='3'){
    partCount=16;
  }
  if(key=='2'||key=='1') {
    partCount=15;
  }
  }
  }
}

///////////////////////////////////////////////false
void part15() {
  background(250);
  fill(0);
  textSize(tsize);
  text("WRONG ANSWER", 200, 300);
  image(finish, 0, 0, width, height);
   arduino.pinMode(4, Arduino.OUTPUT);
   arduino.digitalWrite(4, Arduino.HIGH);
  if (keyPressed) {
    if (key== 'r') {
      partCount=17; 
      background(250);
      arduino.digitalWrite(4, Arduino.LOW);
    }
  }
}/////////////////////////////true
  void part16() {
  background(250);
  fill(0);
  textSize(tsize);
  text("CORRECT ANSWER", 200, 300);
  image(finish, 0, 0, width, height);
  arduino.pinMode(5, Arduino.OUTPUT);
   arduino.digitalWrite(5, Arduino.HIGH);
  if (keyPressed) {
    if (key== 'r') {
      partCount=17; 
      background(250);
      arduino.digitalWrite(5, Arduino.LOW);
    }
  }
}
////////////////////////////////////////////////////////third


void part17() {
  background(250);
 image(totoro, 0, 0, width, height);
  if (keyPressed) {
    if (key== ENTER) {
      partCount=18; 
      background(250);
    }
  }
}

void part18() {

  fill(149, 217, 247);
  rect(x, y, 15, 15);

  if (arduino.analogRead(1)>80) {
    for (int i =0; i < 1; i++) { 
      x++;
    }
  } 
  ////////////////////////////// 
  if (arduino.analogRead(2)>80) {
    for (int i = 0; i < 1; i++) {
      y--;
    }
  }
  ///////////////////////////////
  if (arduino.analogRead(3)>80) {
    for (int i = 0; i < 1; i++) {
      y++;
    }
  }
  /////////////////////////////////////
  if (arduino.analogRead(4)>80) {
    for (int i = 0; i < 1; i++) {
      x--;
    }
  }
  if (keyPressed) {
    if (key=='e') {
      partCount=19;
    }
  }
  fill(0);
  textSize(20);
  text("PRESS E WHEN FINISHED",370,30);
}

void part19() {
  //background(250);
  fill(0);
  textSize(23);
  text(yourWords[3], 70, 580); 
    if (keyPressed){
    if( key =='2'){
    partCount=20;
  }
  if(key=='1'||key=='3') {
    partCount=21;
  }
  }
  }

///////////////////////////////////////////////false
void part21() {
  background(250);
  fill(0);
  textSize(tsize);
  text("WRONG ANSWER", 200, 300);
  image(finish, 0, 0, width, height);
  arduino.pinMode(4, Arduino.OUTPUT);
   arduino.digitalWrite(4, Arduino.HIGH);
  if (keyPressed) {
    if (key== 'r') {
      partCount=22; 
      background(250);
      arduino.digitalWrite(4, Arduino.LOW);
    }
  }
}/////////////////////////////true
  void part20() {
  background(250);
  fill(0);
  textSize(tsize);
  text("CORRECT ANSWER", 200, 300);
  image(finish, 0, 0, width, height);
   arduino.pinMode(5, Arduino.OUTPUT);
   arduino.digitalWrite(5, Arduino.HIGH);
  if (keyPressed) {
    if (key== 'r') {
      partCount=22; 
      background(250);
      arduino.digitalWrite(5, Arduino.LOW);
    }
  }
}
////////////////////////////////////////////forth

void part22() {
  background(250);
 image(gangnam, 0, 0, width, height);
  if (keyPressed) {
    if (key== ENTER) {
      partCount=23; 
      background(250);
    }
  }
}

void part23() {

  fill(149, 217, 247);
  rect(x, y, 15, 15);

  if (arduino.analogRead(1)>80) {
    for (int i =0; i < 1; i++) { 
      x++;
    }
  } 
  ////////////////////////////// 
  if (arduino.analogRead(2)>80) {
    for (int i = 0; i < 1; i++) {
      y--;
    }
  }
  ///////////////////////////////
  if (arduino.analogRead(3)>80) {
    for (int i = 0; i < 1; i++) {
      y++;
    }
  }
  /////////////////////////////////////
  if (arduino.analogRead(4)>80) {
    for (int i = 0; i < 1; i++) {
      x--;
    }
  }
  if (keyPressed) {
    if (key=='e') {
      partCount=24;
    }
  }
  fill(0);
  textSize(20);
  text("PRESS E WHEN FINISHED",370,30);
}

void part24() {
  //background(250);
  fill(0);
  textSize(23);
  text(yourWords[4], 63, 580); 
    if (keyPressed){
    if( key =='3'){
    partCount=26;
  }
  if(key=='2'||key=='1') {
    partCount=25;
  }
  }
  }

///////////////////////////////////////////////false
void part25() {
  background(250);
  fill(0);
  textSize(tsize);
  text("WRONG ANSWER", 200, 300);
  image(finish, 0, 0, width, height);
   arduino.pinMode(4, Arduino.OUTPUT);
   arduino.digitalWrite(4, Arduino.HIGH);
  if (keyPressed) {
    if (key== 'r') {
      partCount=27; 
      background(250);
      arduino.digitalWrite(4, Arduino.LOW);
    }
  }
}/////////////////////////////true
  void part26() {
  background(250);
  fill(0);
  textSize(tsize);
  text("CORRECT ANSWER", 200, 300);
  image(finish, 0, 0, width, height);
  arduino.pinMode(5, Arduino.OUTPUT);
   arduino.digitalWrite(5, Arduino.HIGH);
  if (keyPressed) {
    if (key== 'r') {
      partCount=27; 
      background(250);
       arduino.digitalWrite(5, Arduino.LOW);
    }
  }
}
///////////////////////////////////////////fifth

void part27() {
  background(250);
 image(pikachu, 0, 0, width, height);
  if (keyPressed) {
    if (key== ENTER) {
      partCount=28; 
      background(250);
    }
  }
}

void part28() {

  fill(149, 217, 247);
  rect(x, y, 15, 15);

  if (arduino.analogRead(1)>80) {
    for (int i =0; i < 1; i++) { 
      x++;
    }
  } 
  ////////////////////////////// 
  if (arduino.analogRead(2)>80) {
    for (int i = 0; i < 1; i++) {
      y--;
    }
  }
  ///////////////////////////////
  if (arduino.analogRead(3)>80) {
    for (int i = 0; i < 1; i++) {
      y++;
    }
  }
  /////////////////////////////////////
  if (arduino.analogRead(4)>80) {
    for (int i = 0; i < 1; i++) {
      x--;
    }
  }
  if (keyPressed) {
    if (key=='e') {
      partCount=29;
    }
  }
  fill(0);
  textSize(20);
  text("PRESS E WHEN FINISHED",370,30);
}

void part29() {
  //background(250);
  fill(0);
  textSize(23);
  text(yourWords[5], 80, 580); 
    if (keyPressed){
    if( key =='1'){
    partCount=31;
  }
  if(key=='2'||key=='3') {
    partCount=30;
  }
  }
  }

///////////////////////////////////////////////false
void part30() {
  background(250);
  fill(0);
  textSize(tsize);
  text("WRONG ANSWER", 200, 300);
  image(finish, 0, 0, width, height);
  arduino.pinMode(4, Arduino.OUTPUT);
   arduino.digitalWrite(4, Arduino.HIGH);
  if (keyPressed) {
    if (key== 'r') {
      partCount=1; 
      background(250);
      arduino.digitalWrite(4, Arduino.LOW);
    }
  }
}/////////////////////////////true
  void part31() {
  background(250);
  fill(0);
  textSize(tsize);
  text("CORRECT ANSWER", 200, 300);
  image(finish, 0, 0, width, height);
   arduino.pinMode(5, Arduino.OUTPUT);
   arduino.digitalWrite(5, Arduino.HIGH);
  if (keyPressed) {
    if (key== 'r') {
      partCount=1; 
      background(250);
      arduino.digitalWrite(5, Arduino.LOW);
    }
  }
}

