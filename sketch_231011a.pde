import processing.serial.*;
Serial p;

void setup() {
  size(400, 400);
  p = new Serial(this, "COM4", 9600);
}

void draw() {
  if (p.available() > 0) { // Corrected function name
    String m = p.readStringUntil('\n');
    if (m != null) {
      print(m);
      if (float(m) > 26.0) {
        background(255, 0, 0);
      } else {
        background(0, 255, 0);
      }

      textSize(128);
      text(m, 20, 300);
    }
  }
}
