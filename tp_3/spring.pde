class Spring {
  float mass;
  float k;
  float density;
  float pos;
  float vel;
  
  
  Rectangle r;
  Circle c;
  
  public Spring(float x1, float y1, float k, float m, float d) {
    r = new Rectangle(x1-20/2, y1, 20, 20);
    c = new Circle(x1, y1+75, 20);
    mass = m;
    density = d;
    this.k = k;
    pos = -200; // on commence en haut
    vel = 0;
  }
  
  void draw() {
    float drag = -0.5 * vel * abs(vel) * density;
    vel += (- k * pos + drag) / mass;
    pos += vel;
    c.p1.y = pos + r.y1 + 300;
    //c.p1.y += cos(millis() * w) * 20;
    
    System.out.print("pos :" + pos);
    System.out.print("\tvel :" + vel);
    System.out.println("\tdrag :" + drag);
    
    background(255);
    r.draw();
    c.draw();
  }
}
