class Spring {
  int weight = 1;
  
  Rectangle r;
  Circle c;
  
  public Spring(float x1, float y1) {
    r = new Rectangle(x1-20/2, y1, 20, 20);
    c = new Circle(x1, y1+75, 20);
  }
  
  void draw() {
    r.draw();
    c.draw();
  }
}
