float circleX;
float circleY;
float circleWidth;
float circleHeight;

float rectWidth;
float rectHeight;

int backgroundColor = 255;
int fill = 175;
int stroke = 0;

void setup() {
  size(800, 800);
  circleX = width / 2;
  circleY = height / 2;
  circleWidth = (width / 4) * 2;
  circleHeight = (height / 4) * 2;
  rectWidth = (width / 16) * 2;
  rectHeight = (height / 16) * 2;
}

void draw() {
  background(backgroundColor);

  stroke(stroke);
  fill(fill);

  line(0, 0, width, height);
  line(0, height, width, 0);

  ellipse(circleX, circleY, circleWidth, circleHeight);

  rectMode(CENTER);
  rect((width / 16) * 2, height/2, rectWidth, rectHeight);
  rect((width / 16) * 14, height/2, rectWidth, rectHeight);
}
