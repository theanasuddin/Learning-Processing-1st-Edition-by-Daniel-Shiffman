// an array to keep track of how often random numbers are picked
float[] randomCounts;

void setup() {
  size(200, 200);
  randomCounts = new float[20];
}

void draw() {
  background(255);

  // pick a random number and increase the count
  int index = int(random(randomCounts.length));
  randomCounts[index]++;

  // draw a rectangle to graph results
  stroke(0);
  fill(175);
  for (int x = 0; x < randomCounts.length; x++) {
    rect(x*10, 0, 9, randomCounts[x]);
  }
}
