class Bullet {
  float x, y, vy;
  float size;
  
  Bullet(Player player) {
    this.x = player.x;
    this.y = player.y - 15;
    this.vy = -10;
    this.size = 10;
  }
  
  void drawBullet() {
    fill(255);
    ellipse(x, y, size, size);
    x+=vy;
  }
    
  void run() {
    drawBullet();
  }
  
}
