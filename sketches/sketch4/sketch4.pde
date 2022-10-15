/* Sairus Pradhan (218946467)
FA DATT 2040 - Lab 1
10/ 09/ 2022
Sketch 4
Made an ecosystem with a predator called "Deemo" from a video game I played with prey
for food.

ALL DRAWINGS ARE ORIGINAL AND DRAWN BY THE STUDENT.

More OOP focused rather than the art part. The art component is still there but not
as much as the code itself (Tried using more options from PVector refrences and other 
tutroials from processing like void run() and update()).

If the predator is approached by the mouse too much you'll get a special screen where
the predator "Deemo" will become sad and heart broken because you won't allow him to
eat his food.
*/

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
