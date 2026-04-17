class RightRectangleDiagonal extends Rectangle {
  RightRectangleDiagonal(float x, float y, float rWidth, float rHeight) {
    super(x, y, x - rWidth, y - rHeight, x - rWidth, y - rHeight, x, y);
  }
}
