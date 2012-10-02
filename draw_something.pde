import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
float x,y;
PFont ourFont;
int textcolor=0;
int partCount=1;

import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;


void setup(){
 size(500, 500);
    println(Arduino.list()); 
    arduino = new Arduino(this, Arduino.list()[0], 57600); 
     x = width/2;
     y = height/2;
    
}


void draw(){
  
   if (partCount==1) {
    part1();
  }
  if(partCount==2) {
    part2();
  }

  
  }
  /////////////////////////////////
  
void part1(){  
fill(143,224,247);
  rect(x,y,15,15);

  if (arduino.analogRead(1)>80){
  for (int i =1; i <= 1; i++) { 
    y--;
  }
  } 

  ////////////////////////////// 
if (arduino.analogRead(2)>80){
  for (int i = 1; i <= 1; i++) {
    x--;
  }
  }
 
  
  ///////////////////////////////
    if (arduino.analogRead(3)>80){
  for (int i = 1; i <= 1; i++) {
   x++;
  }
  }

  
 /////////////////////////////////////
     if (arduino.analogRead(4)>80){
  for (int i = 1; i <= 1; i++) {
   y++;
  }
  }
  
  if(mousePressed){
   partCount=2; 
  }
}

void part2(){
 
     fill(100,110,240);
 rect(x,y,15,15);
 
  if (arduino.analogRead(1)>80){
  for (int i =2; i <= 2; i++) { 
    y--;
  }
  } 

  ////////////////////////////// 
if (arduino.analogRead(2)>80){
  for (int i = 2; i <= 2; i++) {
    x--;
  }
  }
 
  
  ///////////////////////////////
    if (arduino.analogRead(3)>80){
  for (int i = 2; i <= 2; i++) {
   x++;
  }
  }

  
 /////////////////////////////////////
     if (arduino.analogRead(4)>80){
  for (int i = 2; i <= 2; i++) {
   y++;
  }
  }
  
  
}
  
  


