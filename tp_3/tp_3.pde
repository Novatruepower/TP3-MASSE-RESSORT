Spring s;

void setup() {
  size(1000, 700);
  background(255);
  s = new Spring(width / 2, 80, 2.5, 50, 0.5);
}

void mouseClicked() {
  s.setPos(mouseY);
}

void mouseDragged() {
  // laggy
  //s.setPos(mouseY);
}

void draw() {
  /*if (mousePressed) {
    s.setPos(mouseY);
  } */
  s.draw();
}
