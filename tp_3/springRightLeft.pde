class SpringRightLeft {
  int linesCount;
  ArrayList<ISpringParts<Rectangle>> Parts = new ArrayList<ISpringParts<Rectangle>>();
  
  SpringRightLeft(int linesCount, float x, float y, float rWidth, float rHeight) {
    this.linesCount = linesCount;
    Rectangle r = new Rectangle(x, y, rWidth, rHeight);
    Parts.add(new Rectangle(x, y, rWidth, rHeight));
    
    if (linesCount > 0) {
      Rectangle newPart = new RightRectangleDiagonal(r.x3 - rWidth / 2, r.y4, rWidth, -rHeight);
      Parts.add(newPart);
    }
    
    for (int i = 1; i < linesCount; ++i) {
      ISpringParts<Rectangle> prevPart = Parts.get(i);
      Rectangle newPart;
      if (i % 2 == 1) {
        newPart = new RightRectangleDiagonal(r.x3 - rWidth / 2, r.y4, rWidth, -rHeight);
      } else {
       // newPart = new RightRectangleDiagonal(prevPart.x3, prevPart.y1, rWidth, -rHeight);
        //newPart = new RightRectangleDiagonal(prevPart.x3, prevPart.y1, rWidth, -rHeight);
       newPart = new RightRectangleDiagonal(r.x3 - rWidth / 2, r.y4, rWidth, -rHeight);
      }
      
      prevPart.attach(newPart);
      Parts.add(newPart);
    }
  }
  
  void draw() {
    for (ISpringParts part : Parts) {
      part.draw();
    }
  }
}
