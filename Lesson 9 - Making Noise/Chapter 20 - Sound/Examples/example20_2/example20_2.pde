import processing.sound.*;

SoundFile dingdong;
Doorbell doorbell;

void setup() {
  size(200, 200);
  dingdong = new SoundFile(this, "dingdong.mp3");
  doorbell = new Doorbell(width / 2, height / 2, 64);
}

void draw() {
  background(255);
  doorbell.display(mouseX, mouseY);
}

void mousePressed() {
  if (doorbell.contains(mouseX, mouseY)) {
    dingdong.play();
  }
}
