/* Sairus Pradhan (218946467)
FA DATT 2040 - Lab 1 
11/ 20/ 2022
Second Project

I made an instrument that plays a song and manipulates 3D shapes abstractly based on
the frequency of the song and an interation with the instrument with sound from
imported libraries (link down below). 

As you move hold your mouse and move up the screen the intensity gets higher
and when you bring it back down it will lower.

https://code.compartmental.net/minim/javadoc/ddf/minim/package-summary.html\
https://code.compartmental.net/minim/javadoc/ddf/minim/Minim.html

I tried applying filters using the PShaders with the .glsl files but it
kept on flashing a black screen at me so I decided to take it off.
*/


import ddf.minim.*;

Minim minim;

AudioPlayer audio;

// PShader filter1;


ArrayList<Stroke> strokes;
int marktime = 0;
int timeout = 1000;

void setup() {
  size(1100, 900, P3D);
  // filter1 = loadShader("dithering.glsl"); https://www.shadertoy.com/view/Xs23zW 
  
  setupXYscope();
  
  strokes = new ArrayList<Stroke>();
  
  minim = new Minim(this);
  // https://pixabay.com/music/bossa-nova-quando-acoustic-guitar-bossa-nova-3946/ 
  audio = minim.loadFile("guitar_jam.mp3"); //Posted by JuliusH from pixabay.
  audio.play();
}

void draw() {
  
  background(127);
  
  
  // https://adams2.home.blog/2019/01/25/making-shapes-move-with-audio-in-processing/
  // movement of shapes based on frequency of the music
  fill(0, 53, 13);
  ellipse(351, 140, audio.left.get(1)*800, 200);
  
  fill(216, 191, 216);
  ellipse(400, 460, audio.left.get(1)*800, 200);
   
  fill(176, 196, 222);
  ellipse(400, 460, audio.left.get(1)*400, 50);
  
  // filter(filter1);
  fill(143, 43, 0); 
  triangle(700, 100, audio.left.get(1)*540, 420, 490, 420);
  triangle(600, 100, audio.left.get(1)*440, audio.left.get(1)*10, 10, 100);
  
  updateXYscope();
  
  for (int i=strokes.size()-1; i >= 0; i--) {
    Stroke stroke = strokes.get(i);
    stroke.run();
    if (!stroke.alive) strokes.remove(i);
  }
  
  if (millis() > marktime + timeout) {
    xy.clearWaves();
  }

  surface.setTitle("" + frameRate);
}
