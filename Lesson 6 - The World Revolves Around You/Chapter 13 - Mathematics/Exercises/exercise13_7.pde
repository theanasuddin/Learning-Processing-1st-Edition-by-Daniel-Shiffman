float theta = 0.0;

void setup() {
  size(500, 500);
}

void draw() {
  background(255);

  // the output of the sin() function oscillates smoothly between -1 and 1
  // by adding 2 we get values between 1 and 3
  // by multiplying by 100, we get values between 100 and 300 which can be used as the ellipse's size
  float diameter = (sin(theta) + 2) * 100; 

  // with each cycle, increment theta
  theta += 0.05;

  // draw the ellipse at the center of the canvas with diameter value produced by sine
  fill(0);
  noStroke();
  ellipse(250, 250, diameter, diameter);
}
