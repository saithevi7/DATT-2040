// create a PVector for position
PVector pos;

// create a PVector for acceleration
PVector acc;

int speed = 2;

void setup() {
  
  size(500, 500);
  pos = new PVector(random(width), random(height), 50);
  
  // variable to move shape
  acc = new PVector(random(-speed, speed), random(-speed, speed), 0);
  
}


void draw() {
  
  background(0);
  
  // function to move shape
  pos.add(acc);
  
  ellipse(pos.x, pos.y, pos.z, pos.z);
  
}

void mousePressed() {
  
  pos = new PVector(random(width), random(height), 50);
  acc = new PVector(random(-speed, speed), random(-speed, speed), 0);

}
