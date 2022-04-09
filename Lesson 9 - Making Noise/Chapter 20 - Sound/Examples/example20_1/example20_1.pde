import processing.sound.*;

SoundFile song;

void setup() {
  size(200, 200);
  song = new SoundFile(this, "reflections_on_the_shore.mp3");
  song.play();
}

void draw() {
}

void mousePressed() {
  if (song.isPlaying()) {
    song.pause();
  } else {
    song.play();
  }
}
