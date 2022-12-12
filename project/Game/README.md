# Project 1 Doucumentation

***ALL CODE, FUNCTIONS, DOWNLOADS AND LIBRARIES WERE CITED VIA URL IN THE CODE ITSELF***

*<u>Controls and Rules:</u>*

1. Use arrow keys to navigate your way around the environment.

2. Press space to shoot.

3. Shoot "enemies" to gain points

4. If you get hit by the enemy, then everything resets.

This part of the project has the core concepts of **Week 2 (Emergence, vectors and motion)**, **Week 3 (Waves, circles and distance)**, and **Week 4 (Objects, interaction and physics - physics, objects, interaction)**.



I've created a shooter game with a pirates and ocean adventure theme. Things like the background as waves and "enemies" being cannon balls.



## <u>Background</u>

Starting with the background. I created a background with a **<u>parallax effect</u>** that makes it looks like you're moving and gives it a feeling of an endless runner game. I did this by getting the images using **PImage**, making the speed and direction for each wave, and then making a condition where if one part of the x values of the picture hit a specific x-value, then it resets. With all those combined with the resetting and movement of the images, it creates an infinite loop which gives the background the illusion of a parallax effect. 



### <u>Game Mechanics</u>

I wanted to remake a new game after Week 4's submission with the environment. There were many problems with the interaction so I wanted to try some new things while trying to improve from the last assignments.



For each Objects that was needed in the game (basically anything that would show up in the game and have an interaction) such as the Bullet, Enemies, and the Player, I made a class for. In each class, it would have the physics (speed direction), then the draw function, and lastly the run() for the main file (Game.pde) to call for. The Enemy and Player class would have a bit more code to it. 

* **<u>The Bullet file</u>** is simple with physics (vectors), draw(), and output as run();

* **<u>The Enemy file </u>**(aka the cannon balls shot at you) would have it's own type of collision check that would happen with the player and bullet. If it hits the player, you get a quick flash of red. If it hits the bullet you get a quick green screen. Then when you look at the Game file, there is another collision check that would change the enitre game itself based on the condtions of the collision function (void). if the player hits the enemy, everything clears and the game resets, and then if the bullet hits the enemy, the enemy and bullets are removed while your points go up. 
  
  * Using instaceOf to compare the instance with the type which is going to be true or false. From there I can conduct my condtions for the collision check for the player and bullet using the distance function.
  
  * With these two collison checkers together we get 2 unique outputs that come together to create unique interactions with the games enemies.

* **<u>The Player file</u>** is also simple physics (vectors), draw, output, and control calls. This would be used in the Game file under **keyPressed()** and **keyReleased()**.

* **<u>The Game File</u>** contains the Controls, Background for the parallax effect, and the arrays and class calls for each Objects. Any Object that spawned more than once would be contained in an array which in this case was the **bullets** and **enemies**. 
