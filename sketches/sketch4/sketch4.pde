// Variables
int numDeemo = 1;
int numFood = 15;

// arrays 
Deemo[] mainDeemo = new Deemo[numDeemo];
food[] food = new food[numFood];

// randomly place character and food
void setup() {
  size(800, 600, P2D);
   
  for (int i=0; i<mainDeemo.length; i++) {
    mainDeemo[i] = new Deemo(random(width), random(height));
  }
  
  // populate
  for (int i=0; i<food.length; i++) {
    food[i] = new food(random(width), random(height));    
    
  }    
}

// draw
void draw() {
  background(255, 255, 255);
  
  for (int i=0; i<mainDeemo.length; i++) {
    mainDeemo[i].run(); 
  }  
  
  for (int i=0; i<food.length; i++) {
    food[i].run();    
   }
}
