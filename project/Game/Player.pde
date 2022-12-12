class Player {
  float x, y, vx, vy;
  boolean upPressed, downPressed, leftPressed, rightPressed;
  
  int speed = 8; //speed of Player
  
  Player() {
    this.x = width/2;
    this.y = height - height/4;
    this.vy = 0;
    this.vx = 0;
  }
  
  void drawPlayer() {
    if (upPressed == true) {
      vy= -speed;
    } 
    else if (downPressed == true) {
      vy = speed;
    } 
    else {
      y -= vy;
      vy = 0;
    }
    
    if (leftPressed == true) {
      vx= -speed;
    } 
    else if (rightPressed == true) {
      vx= speed;
    } 
    else {
      vx=0;
    }
    
    x += vx;
    
    if (y-20>=50 && y<height) {
      y += vy;
    }
        
    if (x+10 < 0) {
      x = width+9;
   }  
     
    if (x-10 > width) {
      x = -9;
  }
    
    triangle(x, y-17.32, x-10, y, x+10, y);
  }
}
