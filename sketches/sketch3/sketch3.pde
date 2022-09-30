/* Sairus Pradhan (218946467)
FA DATT 2040 - Lab 1
09/ 09/ 2022
Sketch 3

Using code from week 3 and my sketch1 lab and experimenting further:
https://github.com/atarilover123/DATT-2040-Math-Art-Code/blob/main/Week_3/Waves/E3_sin_scale/E3_sin_scale.pde
*/


void setup() {
  size(900, 900);
  background(127); 
}

void draw() {
  translate(width/2, height/2);
  float mag = 400;
  float s = 20;
  noStroke();
  
  for (int i =0; i < 100; i++) {
    float w = map(tan(radians(frameCount)), -1, 1, -100, 100);
    float wave1 = map(sin(radians(frameCount* 0.8 + i)), -1, 1, -mag, mag);
    float wave2 = map(cos(radians(frameCount + i + w)), -1, 1, -mag, mag);
    float c = map(cos(radians(frameCount * 5 + i)), -1, 1, 0, 200); // gives me the smoothest waves out of all 3
    
    
    fill(c);
    rect(wave1, wave2, s, s);
    ellipse(wave1, wave2, s, s);
    
    
  }
  
  
  
}
