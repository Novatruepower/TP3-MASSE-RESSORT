class SpringRightLeft {
  int linesCount;
  ArrayList<ISpringParts<Rectangle>> Parts = new ArrayList<ISpringParts<Rectangle>>();
  Circle c;
  Rectangle r;
  float mass;
  float k;
  float density;
  float pos;
  float vel;
  float timeSpeed = 0.6;
  
  SpringRightLeft(int linesCount, float x, float y, float rWidth, float rHeight, int ray, float k, float m, float d) {
    this.linesCount = linesCount;
    mass = m;
    density = d;
    this.k = k;
    pos = 0;
    vel = 0;
    
    r = new Rectangle(x, y, rWidth, rHeight);
    //Parts.add(r);
    
    if (linesCount > 0) {
      Rectangle newPart = new RightRectangleDiagonal(r.x3 - rWidth / 2, r.y4, rWidth, -rHeight);
      Parts.add(newPart);
    }
    
    for (int i = 1; i < linesCount; ++i) {
      Rectangle prevPart = Parts.get(i - 1).getPart();
      Rectangle newPart;
      if (i % 2 == 0) {
        newPart = new RightRectangleDiagonal(prevPart.x3, prevPart.y3, rWidth, -rHeight);
      } else {
       newPart = new LeftRectangleDiagonal(prevPart.x3, prevPart.y3, rWidth, -rHeight);
      }
      
      Parts.add(newPart);
    }
    
    if (linesCount > 0) {
      Rectangle prevPart = Parts.get(linesCount - 1).getPart();
      c = new Circle(prevPart.x3, prevPart.y4 + ray, ray);
      setPos(y);
    }
  }
  
  void setPos(float y) {
    pos = y - c.p1.y + pos;
  }
  
  void draw() {
  float drag = -0.5 * vel * abs(vel) * density;
  vel += (- k * pos + drag) / mass * timeSpeed;
  pos += vel * timeSpeed;
  c.p1.y = pos + r.y1 + 300;
  float diff = c.p1.y - r.y1;
    
   r.draw();
   int length = Parts.size();
   float adjust = diff / length;
   
   for (int i = 0; i < length; ++i) {
     ISpringParts<Rectangle> part = Parts.get(i);
     Rectangle rectPart = part.getPart();
     //To do
     part.draw();
   }
   
    c.draw();
  }
}
