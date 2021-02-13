float time = 0.0;
float increment = 0.01;

void setup() {
  size(200, 200);
  smooth();
}
void draw() {
  background(255);

  float n = noise(time) * width;

  // with each cycle, increment the "time"
  time += increment;

  // draw the ellipse with size determined by perlin noise
  fill(0);
  ellipse(width/2, height/2, n, n);
}
