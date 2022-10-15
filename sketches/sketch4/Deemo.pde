// predator "Deemo" class
class Deemo {

  // variables 
  PVector pos, target;
  PImage currentDeemo, deemo, deemoLeftside, inverseDeemo;
  int findFood;
  
  boolean move = false;
  int moveMarkTime = 0;
  int moveTimeOut = 2200; 
   
  boolean searching = false;
  
  float triggerDistance1 = 70;
  float triggerDistance2 = 40;
    
  // Constructor
  Deemo(float x, float y) {
    pos = new PVector(x, y);
    foodSearch();
    
    deemo = loadImage("deemo.png");
    deemo.resize(deemo.width/2, deemo.height/2);
    
    deemoLeftside = loadImage("deemoLeftside.png");
    deemoLeftside.resize(deemoLeftside.width/3, deemoLeftside.height/3);
        
    inverseDeemo = loadImage("white_Deemo.png");
    inverseDeemo.resize(inverseDeemo.width/2, inverseDeemo.height/2);
          
    currentDeemo = deemo;
  }
  
  // interactions 
  void update() {
    PVector mousePos = new PVector(mouseX, mouseY);
    move = pos.dist(mousePos) < triggerDistance1;
    
    // if interaction, then move
    if (move) { 
      searching = false;
      moveMarkTime = millis(); // return millisecond
      currentDeemo = deemoLeftside; 
      if (pos.dist(target) < triggerDistance2) {
        foodSearch();
      }
      
      // no interaction, then search for food
      if (!searching) { 
        foodTarget();
        searching = true;
        currentDeemo = deemoLeftside; 
      }     
  }
    
    // LERP: https://processing.org/reference/PVector_lerp_.html
    // delay in gaining the food to give more of a "ghostly" feeling
    if (move || searching) {
      pos = pos.lerp(target, 0.08).add(new PVector(random(-1, 2), random(-1, 2)));
    }
    
    // if move, new background and image
    if (food[findFood].appear == false) {
      background(0);
      currentDeemo = inverseDeemo;
    }
    
    // search for food using distance
    if (searching && pos.dist(target) < 5) {
      food[findFood].appear = false; 
      foodTarget();
    }
    
    // movement that gives the character a "glitchy" look
    pos.y += tan(millis()) / 2;
    pos.x += sin(millis()) / 2;
  }
  
  // current deemo image
  void draw() {    
    imageMode(CENTER);
    image(currentDeemo, pos.x, pos.y);
  }
  
  void run() {
    update();
    draw();
  }
  
  // randomly search food
  void foodSearch() {
    target = new PVector(random(50, width-50), random(50, height-50));
  }
  
  // array for food, if appear true (always)
  void foodTarget() {
    findFood = int(random(food.length));
    if (food[findFood].appear) {
      target = food[findFood].pos;
    }
  }
   
}
