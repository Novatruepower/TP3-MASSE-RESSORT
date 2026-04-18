class Spring {
  float mass;
  float k;
  float density;
  float pos;
  float vel;
  float timeSpeed = 0.6;
  
  Rectangle r;
  Circle c;
  
  public Spring(float x1, float y1, float k, float m, float d) {
    r = new Rectangle(x1-20/2, y1, 20, 20);
    c = new Circle(x1 + 9, y1+75, 20);
    mass = m;
    density = d;
    this.k = k;
    pos = -200; // on commence en haut
    vel = 0;
  }
  
  void setPos(float y) {
    pos = validHeightPos(y - c.p1.y);
  }
  
  float validHeightPos(float y) {
    return max(min(y, height), 0);
  }
  
  void draw() {
    float drag = -0.5 * vel * (vel >= 0 ? vel : -vel) * density;
    vel += (- k * pos + drag) / mass * timeSpeed;
    float prevPos = pos;
    pos += vel * timeSpeed;
    c.p1.y = validHeightPos(pos + r.y1 + 300);
    //c.p1.y += cos(millis() * w) * 20;
    
    System.out.print("pos :" + pos);
    System.out.print("\tvel :" + vel);
    System.out.println("\tdrag :" + drag);
    
    background(255);
    r.draw();
    c.draw();
    
    float diff = c.p1.y - r.y1;
    diff /= 15;
    
    for (int i = 0; i < 15; i++) {
      float newY1 = r.y1 + diff * (i + 1);
      if (i % 2 == 0) {
        line(r.x1, validHeightPos(newY1 - diff), r.x2, validHeightPos(newY1));
      } else {
        line(r.x2, validHeightPos(newY1 - diff), r.x1, validHeightPos(newY1));
      }
    }
    
    if (c.p1.y == height || c.p1.y == 0) {
      vel = 0;
      pos = prevPos;
    }
  }
}
