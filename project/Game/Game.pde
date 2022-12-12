/* Sairus Pradhan (218946467)
FA DATT 2040 - Lab 1 
11/ 20/ 2022
First Project
*/

// define class
Player player;

// A parallax effect for my games background
// Inspired from https://www.youtube.com/watch?v=vwYFqLdZPfw but used images I made myself
PImage bot_wave, mid_wave, top_wave;
int bot_x = 0, bot_x2 = 600
   ,mid_x = 0, mid_x2 = 600
   ,top_x = 0, top_x2 = 600;

ArrayList<Enemy> enemies = new ArrayList<Enemy>();
int enemySpawn = 60; // The lower the more enemies you get

ArrayList<Bullet> bullets = new ArrayList<Bullet>();

// track points
int points;

void setup() {
  size(600, 450);
  
  // load images
  bot_wave = loadImage("wave1.png");
  bot_wave.resize(600, 450);
  
  mid_wave = loadImage("wave2.png");
  mid_wave.resize(600, 450);
  
  top_wave = loadImage("wave3.png");
  top_wave.resize(600, 450);
  
  // load player
  player = new Player();
  frameRate(30);
  
  // set points value
  points = 0;
}


void draw() {
  background(100, 200, 255);
  // draw background
  image(top_wave, top_x, 0); image(top_wave, top_x2, 0);
  image(mid_wave, mid_x, 0); image(mid_wave, mid_x2, 0);
  image(bot_wave, bot_x, 0); image(bot_wave, bot_x2, 0);
  
  // direction and speed
  top_x++; top_x2++;
  mid_x+=2; mid_x2+=2;
  bot_x+=3; bot_x2+=3;
  
  // parallax effect
  if (top_x > 597) {top_x = -597;} if (top_x2 > 597) {top_x2 = -597;}
  if (mid_x > 597) {mid_x = -597;} if (mid_x2 > 597) {mid_x2 = -597;}
  if (bot_x > 597) {bot_x = -597;} if (bot_x2 > 597) {bot_x2 = -597;}
  
  // spawn enemies
  drawEnemy();
  fill(255);
  stroke(255);
  
  // spawn bullets if shot
  drawBullet();
  
  // spawn player
  player.drawPlayer();
  
  // show points 
  stroke(255);
  fill(255);
  textSize(30);
  textSize(25);
  text("Points: " + points, 10, 25);
  
  // call to detect collision
  Collision();
}


void drawBullet() {
  for (int i = 0; i<bullets.size(); i++) {
    // i(0) to the size of the bullet array
    bullets.get(i).drawBullet();
  }
}

void Collision() {
  for (int i = 0; i < enemies.size(); i++) {
    Enemy a = enemies.get(i); // if you are hit, reset everything
    if (a.checkCollision(player) == true) {
      bullets.clear();
      enemies.clear();
      player = new Player();
      points = 0;
    }
      
    for (int b = 0; b < bullets.size(); b++) {
      Bullet bullet = bullets.get(b);
      if (a.checkCollision(bullet) == true) {
        //remove bullet and enemy if conditions are true
        
        points++;
        
        enemies.remove(a);
        bullets.remove(bullet);
        i--;
        b--;
      }
    }
  }
}

void drawEnemy() {
  if (frameCount % enemySpawn == 0) {
    enemies.add(new Enemy(random(150, 250)));
  }
  for (int i = 0; i<enemies.size(); i++) {
    Enemy currentAsteroid = enemies.get(i);
    currentAsteroid.drawEnemy();
    if (currentAsteroid.y > height + currentAsteroid.size) {
      enemies.remove(currentAsteroid);
      i--;
    }
  }
 
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      player.upPressed = true;
    } 
    else if (keyCode == DOWN) {
      player.downPressed = true;
    } 
    else if (keyCode == LEFT) {
      player.leftPressed = true;
    } 
    else if (keyCode == RIGHT) {
      player.rightPressed = true;
    }
  } 
  else if (key == ' ') {
    Bullet b = new Bullet(player);
    bullets.add(b);
  }
}

void keyReleased() {
  if (keyCode == UP) {
    player.upPressed = false;
  } 
  else if (keyCode == DOWN) {
    player.downPressed = false;
  } 
  else if (keyCode == LEFT) {
    player.leftPressed = false;
  } 
  else if (keyCode == RIGHT) {
    player.rightPressed = false;
  }
}
