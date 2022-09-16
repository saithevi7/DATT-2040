// create a PVector for position
PVector pos;

// create a PVector for acceleration
PVector acc;

void setup() {
  
  size(500, 500);
  pos = new PVector(random(width), random(height), 50);
  
}


void draw() {
  
  background(0);
  
  ellipse(pos.x, pos.y, pos.z, pos.z);
  
}

void mousePressed() {
  
  pos = new PVector(random(width), random(height), 50);

  
}
