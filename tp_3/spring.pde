class Spring {
  float mass;
  float w;
  
  Rectangle r;
  Circle c;
  
  public Spring(float x1, float y1, float k, float m) {
    r = new Rectangle(x1-20/2, y1, 20, 20);
    c = new Circle(x1, y1+75, 20);
    mass = m;
    w = sqrt(k / m);
  }
  
  void draw() {
    c.p1.y = cos(millis() / 10 * w) * 100 + 300;
    
    background(255);
    r.draw();
    c.draw();
  }
}
