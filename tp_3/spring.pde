class Spring {
  float mass;
  float w;
  PVector weightPos;
  
  Circle c;
  
  public Spring(float x1, float y1, float x2, float y2, float k, float m) {
    c = new Circle(x1, y1+75, 20);
    weightPos = new PVector(x2, y2);
    mass = m;
    w = sqrt(k / m);
  }
  
  void draw() {
    weightPos.y = cos(millis() / 10 * w) * 100;
    circle(weightPos.x, weightPos.y, 20);
    c.draw();
  }
}
