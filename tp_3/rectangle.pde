class Rectangle {
  //Top-Left
  float x1;
  float y1;
  //Top-Right
  float x2;
  float y2;
  //Bottom-Right
  float x3;
  float y3;
  //Bottom-Left
  float x4;
  float y4;
  
  Rectangle(float x, float y, float rWidth, float rHeight) {
    float xRight = x + rWidth;
    float yBottom = y - rHeight;
    x1 = x;
    y1 = y;
    x2 = xRight;
    y2 = y;
    x3 = xRight;
    y3 = yBottom;
    x4 = x;
    y4 = yBottom;
  }
 
  Rectangle(float x1, float y1, float x2, float y2, float x3, float y3, float x4, float y4) {
    this.x1 = x1;
    this.y1 = y1;
    this.x2 = x2;
    this.y2 = y2;
    this.x3 = x3;
    this.y3 = y3;
    this.x4 = x4;
    this.y4 = y4;
  }
  
  void draw() {
    fill(155, 100, 255);
    quad(x1, y1, x2, y2, x3, y3, x4, y4);
  }
}
