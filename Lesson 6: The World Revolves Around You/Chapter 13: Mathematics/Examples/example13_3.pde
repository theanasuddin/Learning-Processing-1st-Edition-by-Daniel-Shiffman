void setup() {
  size(200, 200);
  background(255);
  smooth();
  noStroke();
}
void draw() {
  // probabilities for 3 different cases
  // these need to add up to 100%!
  float red_prob = 0.60; // 60% chance of red color
  float green_prob = 0.10; // 10% chance of green color
  float blue_prob = 0.30; // 30% chance of blue color

  float num = random(1); // pick a random number between 0 and 1

  if (num < red_prob) { // if random number is less than .6
    fill(255, 53, 2, 150);
  } else if (num < green_prob + red_prob) {  // if random number is between .6 and .7
    fill(156, 255, 28, 150);
  } else { // all other cases (i.e. between .7 and 1.0)
    fill(10, 52, 178, 150);
  }
  ellipse(random(width), random(height), 64, 64);
}
