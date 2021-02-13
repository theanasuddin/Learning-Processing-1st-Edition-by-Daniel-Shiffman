// 4 random numbers
float[] randoms = new float[4];

// which number are we using
int index = 0; 

void setup() {
  size(200, 200);

  // fill array with random values
  for (int i = 0; i < randoms.length; i++ ) {
    randoms[i] = random(0, 256);
  }

  frameRate(1);
}

void draw() {

  // every frame we access one element of the array
  background(randoms[index]);

  // and then go on to the next one
  index = (index + 1) % randoms.length; // using the modulo operator to cycle a counter back to 0
}
