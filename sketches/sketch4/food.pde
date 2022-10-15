// food class
class food {
  
  // variables 
  PVector pos; 
  PVector acc;
  boolean appear = true;
  
  // contructor
  food(float x, float y) {
    pos = new PVector(random(x), random(y), random(30,70));
    acc = new PVector(random(-2,2), random(-2,2), 0);    
  }
     
  void update() { 
  }
  
  // "food"
  void draw() {
    pos.add(acc); // ADD pos xyz components to acc
    
    // x boundary
    if (pos.x > width-(pos.z/2) || pos.x < pos.z/2) {   
      acc.x = acc.x * -1;
    }
    // y boundary
    if (pos.y > height-pos.z/2 || pos.y < pos.z/2) {
      acc.y = acc.y * -1; 
    }      
    
    // draw
    if(appear) { 
      ellipseMode(CENTER);
      fill(0);
      ellipse(pos.x, pos.y, 30, 30);
    }
  }

  void run() {
    update();
    draw();
  }
}
