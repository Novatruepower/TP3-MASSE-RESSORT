class LeftRectangleDiagonal extends Rectangle {
  LeftRectangleDiagonal(float x, float y, float rWidth, float rHeight) {
   super(x, y, x + rWidth, y - rHeight, x + rWidth, y - rHeight, x, y);
  }
}
