import processing.serial.*;

Serial myPort; // Create object from Serial class
String val; // Data received from the serial port
int x;

int score = 0, y, flag = 1, game = 1;
float start;
PFont f;

void setup(){
  size(1000,1000);
  background(255);
  frameRate(300);
  f = createFont("Arial",16,true);
  String portName = Serial.list()[1]; //change the 0 to a 1 or 2 etc. to match your port
  myPort = new Serial(this, portName, 9600);
}

void draw(){
  if(game == 1){
    if ( myPort.available() > 0) 
  { // If data is available,
  val = myPort.readStringUntil('\n'); // read it and store it in val
  x = Integer.parseInt(val.trim());}
    background(255);
    stroke(23,54,67);
    strokeJoin(ROUND);
    textFont(f,30);
    text("Score:" + score, 20, 30);
    if(y > 950){
      start = random(40, 960);
      y = 0;
      println("score:" + score);
      if(flag == 1){
        game = 0;
        return;
      }
      flag = 1;
    }
    fill(0,255,0);
    ellipse(start, y, 50, 70);
    fill(255,0,0);
    rect(x - 50, 950, 100, 50);
    if(y >= 850){
      if(x >= start - 50 && x <= start + 50 && flag == 1){
        score++;
        flag = 0;
      }
    }
    if(y < 1000)
      y ++;
  }else{
    textFont(f,100);
    textAlign(CENTER);
    text("Game Over!", 500, 500);
  }
}
