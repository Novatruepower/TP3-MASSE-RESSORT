class Spring {
  float mass;
  float w;
  
  Rectangle r;
  //Circle c;
  SpringRightLeft parts;
  RightRectangleDiagonal line1;
  LeftRectangleDiagonal line2;
  
  public Spring(float x1, float y1, float k, float m, float d) {
    r = new Rectangle(x1-20/2, y1, 20, 20);
    parts = new SpringRightLeft(6, x1 - 20/2, y1, 20, 20, 20, k, m ,d);
   // line1 = new RightRectangleDiagonal(r.x3 - 27.5, r.y3 + 40, 20, 20);
    //line2 = new LeftRectangleDiagonal(line1.x3, line1.y1 + 20, 20, 20);
   // c = new Circle(x1, y1+75, 20);
    mass = m;
    w = sqrt(k / m);
  }
  
  void draw() {
    //c.p1.y = cos(millis() / 10 * w) * 100 + 400;
    System.out.println(millis() / 10);
    
    background(255);
   // r.draw();
   // r.draw();
    parts.draw();
    //c.draw();
  }
}
