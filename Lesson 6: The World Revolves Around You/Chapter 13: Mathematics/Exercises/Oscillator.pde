class Oscillator {   
  // two angles
  float xtheta;  
  float ytheta;

  // increment value for both angles  
  float dxtheta;
  float dytheta;

  Oscillator() {   
    xtheta = 0;  
    ytheta = 0; 

    // start randomly
    dxtheta = random(-0.03, 0.03);
    dytheta = random(-0.03, 0.03);
  }   

  void oscillate() {
    // increment angles   
    xtheta += dxtheta;
    ytheta += dytheta;
  }   

  void display() {   
    // map results of sine / cosine to width and height of window
    float x = (sin(xtheta) + 1) * width/2;   
    float y = (cos(ytheta) + 1) * height/2;

    // draw circle and line
    stroke(0);
    fill(175, 100);
    line(width/2, height/2, x, y);  
    ellipse(x, y, 64, 64);
  }
}
