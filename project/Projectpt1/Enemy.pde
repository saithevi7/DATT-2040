class Enemy {
  float size, x, y;

  int vy = 3; //speed of enemy

  Enemy(float size) {
    this.size = size/2;
    //this.x = random(width);
    //this.y = -size;
    
    this.x = -size;
    this.y = random(height);
  }

  void drawEnemy() {
    fill(0);
    stroke(150);
    ellipse(x, y, size, size);
    fill(255);
    ellipse(x-19, y-14, size/8, size/8);
    x+=vy;
  }

  boolean checkCollision(Object other) {
    if (other instanceof Player) {
      Player playerShip = (Player) other;
      float apothem = 10 * tan(60);
      float distance = dist(x, y, playerShip.x, playerShip.y-apothem);
      if (distance < size/2 + apothem + 10) {
        //background(255, 0, 0);
        fill(255, 0, 0, 100);
        rect(0, 0, width, height);
        fill(255);
        
        return true;
      }
    } 
    
    else if (other instanceof Bullet) {
      Bullet bullet = (Bullet) other;
      float distance = dist(x, y, bullet.x, bullet.y); 
      println(distance);
      if (distance <= size/2 + bullet.size/2 ) {
        fill(0, 255, 0, 100);
        rect(0, 0, width, height);
        fill(255);
        
        return true;
      }
    }
    return false;
    
  }
}
