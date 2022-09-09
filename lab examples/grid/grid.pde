// how many col & row in our grid?
int col = 10;
int row = 10;

// to hold the stepsize
int stepx, stepy;

void setup() {
  size(500, 500);
  
  // degine step sizes
  stepx = width/col;
  stepy = height/row;
  
  noLoop();
  frameRate(2);
}

void draw() {
  
  for(int i= 0; i < col; i++) {
    for(int j = 0; j < row; j++) {
      
      float x = i * stepx;
      float y = j * stepy;
      
      if (random(1) > 0.5) {
        fill(255, x, y);
      }
      
      else {
        fill(0, x, y);
      }
      
      rect(x, y, stepx, stepy);
      
    }
  }

}
