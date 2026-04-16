class Spring {
  int weight = 1;
  
  Circle c;
  
  public Spring(float x1, float y1) {
    c = new Circle(x1, y1+75, 20);
  }
  
  void draw() {
    c.draw();
  }
}
