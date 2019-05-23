int sec, hr, min;
float xs, ys, xm, ym, xh, yh;

void setup(){
  sec = second();
  min = minute();
  hr = hour();
  size(1000,1000);
  background(200);
  frameRate(1);
}

void draw(){
  background(100);
  fill(200);
  ellipse(500,500,500,500);
  xs = 200 * cos(((PI/2 - sec*PI/30)));
  ys = 200 * sin(((PI/2 - sec*PI/30)));
  xm = 150 * cos(((PI/2 - min*PI/30)));
  ym = 150 * sin(((PI/2 - min*PI/30)));
  xh = 100 * cos(((PI/2 - hr*PI/6)));
  yh = 100 * sin(((PI/2 - hr*PI/6)));
  strokeWeight(1);
  line(500, 500, 500 + xs, 500 - ys);
  strokeWeight(3);
  line(500, 500, 500 + xm, 500 - ym);
  strokeWeight(5);
  line(500, 500, 500 + xh, 500 - yh);
  if(sec == 60){
    min++;
    sec = 0;
  }
  if(min == 60){
    hr++;
    min = 0;
  }
  if(hr == 12){
    hr = 0;
  }
  sec++;
}
