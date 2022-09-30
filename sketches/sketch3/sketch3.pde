/* Sairus Pradhan (218946467)
FA DATT 2040 - Lab 3
09/ 23/ 2022
Sketch 3

Using code from week 3 and my sketch1 lab and experimenting further:
https://github.com/atarilover123/DATT-2040-Math-Art-Code/blob/main/Week_3/Waves/E3_sin_scale/E3_sin_scale.pde
*/


void setup() {
  size(900, 900);
  background(255); 
}

void draw() {
  translate(width/2, height/2);
  float mag = 400;
  float s = 20; // size
  noStroke();
  
  // for loop for wave
  for (int i =0; i < 100; i++) {
    /* variable of wave to ADD to other waves.
       made the waves start of smooth and slow and then bursts in speed and irregular.
       BUT STILL HAS FORM amidst all of this movements. */ 
    float w = map(tan(radians(frameCount)), -1, 1, -100, 100); 
    float wave1 = map(sin(radians(frameCount* 0.8 + i)), -1, 1, -mag, mag);
    float wave2 = map(cos(radians(frameCount + i + w)), -1, 1, -mag, mag);
    
    // wave and color control for background
    // cos gives me the smoothest waves out of all 3
    float bgColor = map(cos(radians(frameCount * 5 + i)), -1, 1, 0, 200); 
    
    // output shapes and color
    fill(bgColor);
    rect(wave1, wave2, s, s);
    ellipse(wave2, wave1, s, s);
    
    // adds another layer ontop to create this final product
    rect(wave2, wave1, s, s);
  }  
}
