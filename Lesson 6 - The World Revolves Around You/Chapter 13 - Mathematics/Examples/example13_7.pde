// starting angle
float theta = 0.0;

void setup() {
  size(200, 200);
  smooth();
}

void draw() {
  background(255);

  // increment theta (try different values for "angular velocity" here)
  theta += 0.02;

  noStroke();
  fill(0);
  float x = theta;
  // a simple way to draw the wave with an ellipse at each location
  for (int i = 0; i <= 20; i++) {
    // calculate y value based on sine function
    float y = sin(x) * height / 2;

    // draw an ellipse
    ellipse(i * 10, y + height / 2, 16, 16);

    // move along x-axis
    x += 0.2;
  }
}
