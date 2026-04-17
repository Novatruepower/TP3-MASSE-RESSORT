Spring s;

void setup() {
  size(1000, 600);
  background(255);
s =  new Spring(width / 2, 80, 10, 100, 1);
}

void draw() {
  s.draw();
}
