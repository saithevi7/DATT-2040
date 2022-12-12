// https://teddavis.org/xyscope/
import xyscope.*;
import ddf.minim.*; 

XYscope xy;

// setup for XYscope
void setupXYscope() {
  xy = new XYscope(this);
}

// visuals based on audio from library or the mp3 player
void updateXYscope() {  
  xy.buildWaves();
  xy.drawAll();
}
