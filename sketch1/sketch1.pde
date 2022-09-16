/* Sairus Pradhan (218946467)
FA DATT 2040 - Lab 1
09/ 09/ 2022
Sketch 1

Using the code from the grid, I've made an abstract wave motion out of text.
These waves obstruct the text so much that it just looks like debris in a tornado or
space junk flying in space.

I've added the idea of inputs (keyPress: either press 1 or 2) that follow with random
outputs. This only affects the background color and text color.

I have used outside sources to bring my sketch to life. I worked with each function
before and i've "cited" them by adding  their links beside the code to let you know 
where I've got them from. I say "cited" because this is the way I've been taught to 
cite when coding, so if there is a problem just let me know and i'll take 
responsibility for this HW.
*/

PFont font;
PGraphics pg;


int bgColorR = 255;
int bgColorG = 255;
int bgColorB = 255;

int gridColorR = 255; 
int gridColorG = 255;
int gridColorB = 255;

void setup() {
  font = createFont("letter", 600);
  size(800, 600, P2D);
  pg = createGraphics(800, 800, P2D);
}

void draw() {
  
 // https://processing.org/reference/PGraphics.html
 // https://timrodenbroeker.de/processing-tutorial-kinetic-typography-1/
 // buffer effect, runs program a bit smoother.

  pg.beginDraw();
  pg.fill(gridColorR, gridColorG, gridColorB); // rgb values
  pg.background(bgColorR, bgColorG, bgColorB); // rgb values
  pg.textFont(font);
  pg.textSize(600);
  pg.pushMatrix();
  pg.translate(width/2, height/2-130);
  pg.rotate(PI/3);
  pg.textAlign(CENTER, CENTER);
  pg.text("LOL", 0, 0);
  pg.popMatrix();
  pg.endDraw();
  
  // code from class
  // values
  int col = 16;
  int row = 16;

  int stepX = int(width/col);
  int stepY = int(height/row);

  // loop for grid
  for (int j = 0; j < row; j++) {
    for (int i = 0; i < col; i++) {
      
      int x = i * stepX;
      int y = j * stepY;

      /* wave
         what happens here is the grid becomes a wave creates 
         this wave movement on the text. 
         FIRST PART IN MANIPULATING THE WAVE */
      int wave = int(sin(frameCount * 0.05 + (i * j) * 0.07) * 200);
      int wave2 = int(cos(frameCount * 0.05 + (i * j) * 0.09) * 20);

      // https://py.processing.org/reference/copy.html
      // SECOND PART OF MANIPULATING THE WAVE
      // start
      int sx = x + wave;
      int sy = y + wave2;
      int sw = stepX + wave;
      int sh = stepY;

      // end
      int ex = x;
      int ey = y + wave;
      int ew = stepX;
      int eh = stepY + wave2;
      
      copy(pg, sx, sy, sw, sh, ex, ey, ew, eh);      
    }
  }
  
}

// Inputs that follow with random outputs
void keyPressed() {
  if (key == '1') {
    // very specific changes
    bgColorR = int(random(50, 100)); 
    bgColorG = int(random(50, 60));
    bgColorB = int(random(167, 194));
    /* 
    couldn't change the motion of wave in the copy section.
    would get an error saying that sx or eh doesn't exist.
    */
  }

  if (key == '2') {
    // very specific changes
    gridColorR = int(random(122, 255));
    gridColorG = int(random(150, 160));
    gridColorB = int(random(10, 20));
  }
   
}

  
