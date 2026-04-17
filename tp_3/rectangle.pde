class Rectangle {
  float x;
  float y;
  float rwidth;
  float rheight;
 
  Rectangle(float x, float y, float rwidth, float rheight) {
    this.x = x;
    this.y = y;
    this.rwidth = rwidth;
    this.rheight = rheight;
  }
  
  void draw() {
    fill(155, 100, 255);
    rect(x, y, rwidth, rheight);
  }
}
