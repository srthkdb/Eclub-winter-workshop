int x1 = 500, x2 = 500, y = 990;

void setup() {
  background(255);
  frameRate(100);
  size(1000, 1000);
}

void draw() {
  stroke(0);
  line(x1, y, x1 + 1, y + 1);
  line(x2, y, x2 + 1, y + 1);
  x1++;
  x2--;
  y = y - x1*x1;
}
