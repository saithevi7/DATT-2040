// create a PVector for position, acceleration, 
PVector pos, acc;



int speed = 5;

void setup() {
  
  size(500, 500);
  pos = new PVector(random(width), random(height), 100);
  
  // variable to move shape
  acc = new PVector(random(-speed, speed), random(-speed, speed), 0);
  
}


void draw() {
  
  background(0);
  
  // function to move shape
  pos.add(acc);
  
  
  // boundary check
  // x boundary
  if (pos.x > width-(pos.z/2) || pos.x < pos.z/2) {   
    acc.x = acc.x * -1;
  }
  //y boundary
  if (pos.y > height-pos.z/2 || pos.y < pos.z/2) {
    acc.y = acc.y * -1; 
  }
  // draw ellipse
  ellipse(pos.x, pos.y, pos.z, pos.z);
  rect(random(pos.x), random(pos.y), random(pos.z), random(pos.z));
  
}

void mousePressed() {
  
  pos = new PVector(random(20, 480), random(20, 480), 50);
  acc = new PVector(random(-speed, speed), random(-speed, speed), 0);

}
