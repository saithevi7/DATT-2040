/* Sairus Pradhan (218946467)
FA DATT 2040 - Lab 1
09/ 16/ 2022
Sketch 2 (FLASH WARNING)
Used 3 PVectors Method to create a sketch. 
add() - create movement
dist() - check distance and do something if conditions are met
random2D() - give the movement and spawn some randomness. */


// vectors
PVector[] pos; 
PVector[] acc;
PVector rand;

// values
int num = 50; // amount
int speed = 4; 


void setup() {
  size(700,700);
  
  pos = new PVector[num];
  acc = new PVector[num];
  rand = PVector.random2D();
  
  // populate
  for (int i = 0; i < num; i++) {
    pos[i] = new PVector(random(width), random(height), random(30,70));
    acc[i] = new PVector(random(-speed, speed), random(-speed, speed), 0);

  }
  // "cheat" from lab
  stroke(255);
  noFill();
  background(0);
}

void draw() {
  background(0);
  
  fill(0,20);
  rect(0,0, width, height); // "cheat" from lab
    
  for(int j = 0; j < num; j++) {
    
    pos[j].add(acc[j]); // add pos xyz components to acc
    
     // x boundary
  if (pos[j].x > width-(pos[j].z/2) || pos[j].x < pos[j].z/2) {   
    acc[j].x = acc[j].x * -1;
  }
  //y boundary
  if (pos[j].y > height-pos[j].z/2 || pos[j].y < pos[j].z/2) {
    acc[j].y = acc[j].y * -1; 
  }
  
  // find distance
  for (int i =0; i < num; i++) {
    
    float dist = PVector.dist(pos[j], pos[i]);
    
    if (dist <= 100) {
       
      stroke(255);
      
      strokeWeight(1.5);
      line(pos[i].x, pos[i].y, pos[j].x, pos[j].y); // create line 
      
      acc[j].x = acc[j].x * -1; // change x postion
      
      // remove or comment out this fill to remove flash
      fill(random(200), random(200), random(200)); // change colors if distance matches
      //fill(255); - ADD THIS TO REMOVE FLASH
  
}
    
    else {
     noStroke(); 
    }
    
  }
    strokeWeight(1);
    // add random2D() to pos' xyz components
    ellipse(pos[j].x + rand.x, pos[j].y + rand.y, pos[j].z + sin(pos[j].z*frameCount*0.001), pos[j].z + sin(pos[j].z*frameCount*0.001));
   
  }
}

// reset
void mousePressed() {
  for (int i = 0; i < num; i++) {
    pos[i] = new PVector(random(20, 680), random(20,680), 50);
    acc[i] = new PVector(random(-speed, speed), random(-speed, speed), 0);

  }
  
}
