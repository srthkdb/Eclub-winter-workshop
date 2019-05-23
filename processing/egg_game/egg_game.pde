int score = 0, y, flag = 1, game = 1;
float start;
PFont f;

void setup(){
  size(1000,1000);
  background(255);
  frameRate(300);
  f = createFont("Arial",16,true);
}

void draw(){
  if(game == 1){
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
    rect(mouseX, 950, 50, 50);
    if(y >= 850){
      if(mouseX >= start - 25 && mouseX <= start + 25 && flag == 1){
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
