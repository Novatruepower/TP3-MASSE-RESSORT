interface ISpringParts<T> {
  void attach(T newPart);
  //void attach(ISpringParts<T> newPart);
  
  void draw();
}
