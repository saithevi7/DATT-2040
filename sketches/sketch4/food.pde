// food class
class food {
  
  // variables 
  PVector pos;  
  boolean appear = true;
  
  // contructor
  food(float x, float y) {
    pos = new PVector(x, y);
  }
     
  void update() { 
  }
  
  // "food"
  void draw() {
    if(appear) {
      ellipseMode(CENTER);
      fill(0);
      ellipse(pos.x, pos.y, 30, 30);
      
      fill(0);
      rect(pos.x+4.5, pos.y-55, 10, 60);
      
    }
  }

  void run() {
    update();
    draw();
  }
  
}
