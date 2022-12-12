# Project 2 Doucumentation

<u>Controls:</u>

1) click mouse and drag to draw and make sound

2) release mouse or press "BACKSPACE" to erase the output of clicking the mouse.



This part of the project was based on **week 9 (Mutating data)** and **week 10 (3D space)**. The data I used to "Mutate" was audio and then turn it into something visually abstract.



I made an instrument that plays a song and manipulates 3D shapes abstractly based on the frequency of the song and an interation with the instrument with sound from
imported libraries (link down below). I wanted the sounds to be similar to the sounds you showed us in the videos from Lecture 9 specifically *"FFT Impostor"*  and *"Envelope"*. Where the audio shifts in intensity not only from the audio, but from the visuals as well. 

As you hold your mouse and move around the screen, the intensity get higher both audio-wise and visual-wise. Try holding your mouse while moving at the same time for a while and see what you get from it. 



## <u>ddf.minim and XYscope Library</u>

Using the ddf.minim library, it helps me deal with audio manipulation really easily with it's functions when called. Such as **audio.left.get()** which can be put as a variable in the shapes which moves the shapes depedning on the audio's frequency. 

Then I used the XYscope library to convert shapes into waveforms with the help of the ddf.minim library. instead of making the conversion into some shape and having it display out there, I made it a condition where if you click your mouse, a stroke would be drawn with the conversion happening when you click on the mouse. This in turn creates an funky and weird stroke that gets more intense the more you hold and move your mouse.






