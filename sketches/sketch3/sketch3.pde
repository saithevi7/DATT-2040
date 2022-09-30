


void setup() {
  size(1000, 1000);
  background(0); 
}

void draw() {
  translate(width/2, height/2);
  float mag = 400;
  float s = 3;
  noStroke();
  
  for (int i =0; i < 100; i++) {
    float wave1 = map(sin(radians(frameCount* 0.8 + i)), -1, 1, -mag, mag);
    float wave2 = map(cos(radians(frameCount + i)), -1, 1, -mag, mag);
    float c = map(tan(radians(frameCount + i)), -1, 1, 0, 200);
    fill(c);
    
    
    ellipse(wave1, wave2, s, s);
    
    
  }
  
  
  
}
