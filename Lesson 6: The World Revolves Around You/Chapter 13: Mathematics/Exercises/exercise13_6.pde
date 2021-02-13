// an array of Oscillator objects
Oscillator[] oscillators = new Oscillator[10];

void setup() {   
  size(640, 360); 

  // initialize all objects
  for (int i = 0; i < oscillators.length; i++) {
    oscillators[i] = new Oscillator();
  }
}   

void draw() {   
  background(255);  

  // run all objects
  for (int i = 0; i < oscillators.length; i++) {
    oscillators[i].oscillate();
    oscillators[i].display();
  }
}
