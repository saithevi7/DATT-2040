// 



// https://timrodenbroeker.de/processing-tutorial-kinetic-typography-1/

// https://processing.org/reference/PGraphics.html
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
  
  // PGraphics 
  pg.beginDraw();
  pg.fill(gridColorR, gridColorG, gridColorB);
  pg.background(bgColorR, bgColorG, bgColorB);
  pg.textFont(font);
  pg.textSize(600);
  pg.pushMatrix();
  pg.translate(width/2, height/2-130);
  pg.rotate(PI/3);
  pg.textAlign(CENTER, CENTER);
  pg.text("LOL", 0, 0);
  pg.popMatrix();
  pg.endDraw();

  int col = 16;
  int row = 16;

  int stepX = int(width/col);
  int stepY = int(height/row);

  for (int j = 0; j < row; j++) {
    for (int i = 0; i < col; i++) {
      
      int x = i * stepX;
      int y = j * stepY;

      // wave
      int wave = int(sin(frameCount * 0.05 + (i * j) * 0.07) * 200);
      int wave2 = int(cos(frameCount * 0.05 + (i * j) * 0.09) * 20);

      // https://py.processing.org/reference/copy.html
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

void keyPressed() {
  if (key == '1') {
    bgColorR = int(random(50, 100));
    bgColorG = int(random(50, 60));
    bgColorB = int(random(167, 194));
    /* 
    couldn't change the motion of wave in the copy section.
    would get an error saying that sx or eh doesn't exist.
    */
  }

  if (key == '2') {
    gridColorR = int(random(122, 255));
    gridColorG = int(random(150, 160));
    gridColorB = int(random(10, 20));
  }
   
}

  
