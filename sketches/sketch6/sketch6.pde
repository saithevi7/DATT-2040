/* Sairus Pradhan (218946467)
FA DATT 2040 - Lab 1
10/ 21/ 2022
Sketch 6  

This is my sketch6 for a fractal. Since this is a pass/fail, I assume it's just
playing around with the examples of recursion in the examples given on github.

I chose to use the cantor example on: 
https://github.com/atarilover123/DATT-2040-Math-Art-Code/blob/main/Week_6/Lab/cantor_set/cantor_set.pde
*/

// canvas setup
void setup() {
  size(500, 500);
  background(255);
  
}

// draw and call from void functions
void draw() {
  background(255);
  cantor(50, 50, 400);
  cantor2(25, 25, 300);
}

// first set of recurrsions with stretched rectangles
void cantor(float x, float y, float len) {
  if (len > 1) {
    noFill();
    stroke(0);
    rect(x, y, len, 10);
    y +=75;
    cantor(x, y, len/3);  // having fun with some values 
    cantor(x+len*2/3, y, len/3);
    cantor(x-2, y+len*2/3, len/3);
    cantor(x+len-1.2, y, len/2);
    
  }
}

// second set of reccursions with stretched ellipses
void cantor2(float x2, float y2, float len2) {
  if (len2 > 1) {
    
    fill(0);
    noStroke();
    ellipse(x2, y2, len2, 8.5); 
    y2 += 75;
    cantor2(x2, y2, len2/2);  // having fun with some values 
    cantor2(x2+len2*3/4, y2, len2/2);
    cantor2(x2, y2+len2*3/4, len2/2);       
  }
}

  
