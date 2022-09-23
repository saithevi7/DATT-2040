PVector[] pos;
PVector[] acc;

int num = 50;
int speed = 4;


void setup() {
  size(700,700);
  
  pos = new PVector[num];
  acc = new PVector[num];
  
  // populate
  for (int i = 0; i < num; i++) {
    pos[i] = new PVector(random(width), random(height), random(30,70));
    acc[i] = new PVector(random(-speed, speed), random(-speed, speed), 0);

  }
  
  stroke(255);
  noFill();
  background(0);
}

void draw() {
  background(0);
  
  fill(0,20);
  rect(0,0, width, height);
    
  for(int j = 0; j < num; j++) {
    
    pos[j].add(acc[j]);
    
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
      line(pos[i].x, pos[i].y, pos[j].x, pos[j].y);
      
      acc[j].x = acc[j].x * -1;  
      
      fill(random(200));
    }
    
    else {
     noStroke(); 
    }
    
  }
    strokeWeight(1);
    ellipse(pos[j].x, pos[j].y, pos[j].z + sin(pos[j].z*frameCount*0.001), pos[j].z + sin(pos[j].z*frameCount*0.001));
   
  }
}


void mousePressed() {
  for (int i = 0; i < num; i++) {
    pos[i] = new PVector(random(20, 680), random(20,680), 50);
    acc[i] = new PVector(random(-speed, speed), random(-speed, speed), 0);

  }
  
}
