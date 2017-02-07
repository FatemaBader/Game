# Game
A Game made in Processing using physics. 

#YouTube Video
[![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/gAreBmFYWQQ/0.jpg)](https://www.youtube.com/watch?v=gAreBmFYWQQ)

# Concept
My game is based off the shooting game in StarWars. The player is the pilot and must use arrow keys to navigate, to dodge randomly generated shooting bullets. Each time the pilot gets shot the health bar quickly changes colour and decreases. The timer is set as soon as the game has started.

# Controls

* Arrow keys to navigate

# Features
The UI has three features.

* Start Page
  * Contains the simple information needed to play the game 
* Health Bar
  * Shows users current Health status
* Timer
  * Shows users current score
* End Page
  * Displays users final score

# Functionality 

* Box2D
  
  * I used a library that would help enable the bodies to undego change after a collision. 
  The concept behind it is that each body would have something attached to it, be it an image or even a rectangle, to create a fixture. It's the fixture we deal with when wanting something to dispapear after 2 fixtures come in contact. In my case, the bullet would delete from the arraylist and health bar change colour and change shape (gets smaller) should a collision occur.
