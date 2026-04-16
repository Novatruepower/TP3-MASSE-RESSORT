class Circle {
  PVector p1;
 
  Circle(float x1, float y1, int ray) {
    p1 = new PVector(x1, y1, ray);
  }
  
  void draw() {
    fill(0, 100, 255);
    stroke(0);
    circle(p1.x, p1.y, p1.z);
  }
}
