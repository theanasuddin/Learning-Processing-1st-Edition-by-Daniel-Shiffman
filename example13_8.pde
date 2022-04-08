void setup() {
  size(200, 200);
  smooth();
}

void draw() {
  background(255);
  stroke(0);
  noFill();
  drawCircle(width/2, height/2, 100);
}

void drawCircle(float x, float y, float radius) {
  ellipse(x, y, radius, radius);
  if (radius > 2) {
    drawCircle(x + radius / 2, y, radius / 2);
    drawCircle(x - radius  /2, y, radius / 2);
  }
}
