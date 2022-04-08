float y = 100;
void setup() {
  size(200, 200);
  smooth();
}

void draw() {
  background(0);
  float r = random(1);

  float moveUpProbability = 0.10;
  float moveDownProbability = 0.20;
  float doNothingProbability = 0.70;

  if (r < moveUpProbability) {
    y--;
  } else if (r < moveUpProbability + moveDownProbability) {
    y++;
  }

  stroke(0);
  fill(175);
  ellipse(width/2, y, 16, 16);
}
