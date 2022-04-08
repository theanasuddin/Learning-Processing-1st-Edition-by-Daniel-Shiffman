// starting "time"  
float t = 0.0;  

void setup() {   
  size(500, 500);
}   

void draw() {   
  background(255); 

  // increment "time"
  t += 0.01;  
  float x = t;  

  noStroke();  
  fill(0, 100);  

  // a for loop is used to draw all the points along a sine wave (scaled to the pixel dimension of the canvas)
  for (int i = 0; i <= width; i += 20) {   
    // calculate y value based on sine function  
    float y =  noise(x) * height;  

    // draw an ellipse  
    ellipse(i, y, 32, 32);  

    // move along x-axis  
    x += 0.05;
  }
}   
