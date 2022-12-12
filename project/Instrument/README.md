# Project 2 Doucumentation

***ALL CODE, FUNCTIONS, DOWNLOADS AND LIBRARIES WERE CITED VIA URL IN THE CODE ITSELF</u>***

<u>Controls:</u>

1) click mouse and drag to draw and make sound

2) release mouse or press "BACKSPACE" to erase the output of clicking the mouse.



This part of the project was based on **week 9 (Mutating data)** and **week 10 (3D space)**. The data I used to "Mutate" was audio and then turn it into something visually abstract.



I made an instrument that plays a song and manipulates 3D shapes abstractly based on the frequency of the song and an interation with the instrument with sound from
imported libraries (link down below). I wanted the sounds to be similar to the sounds you showed us in the videos from Lecture 9 specifically *"FFT Impostor"*  and *"Envelope"*. Where the audio shifts in intensity not only from the audio, but from the visuals as well. 

As you hold your mouse and move around the screen, the intensity get higher both audio-wise and visual-wise. Try holding your mouse while moving at the same time for a while and you get a cool looking wave from the frequency you made.



## <u>ddf.minim and XYscope Library</u>

Using the ddf.minim library, it helps me deal with audio manipulation really easily with it's functions when called. Such as **audio.left.get()** which can be put as a variable in the shapes which moves the shapes depedning on the audio's frequency. 

Then I used the XYscope library to convert shapes into waveforms with the help of the ddf.minim library. instead of making the conversion into some shape and having it display out there, I made it a condition where if you click your mouse, a stroke would be drawn with the conversion happening when you click on the mouse. This in turn creates an funky and weird stroke that gets more intense the more you hold and move your mouse.



### <u>What didn't work</u>

The only thing that didn't work was the output I wanted from the function PShaders. I tried applying filters using the PShaders with the .glsl files but it kept on flashing a black screen at me so I decided to take it off. Not only was it on the the shapes I added, but the stroke as well on the mousePressed() and Stroke class. Maybe it was because of the type of shader filter I decided to work with but I tried it with other .glsl files from the Web and it just didn't give me the output I wanted. So I just ended up commenting it out. 




