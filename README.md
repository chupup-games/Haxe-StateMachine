Haxe-StateMachine
=================

Basic State-Machine For Haxe/OpenFL Games


This State-Machine was adapted for the Haxe programming language
by following a tutorial from Dan Schuller ("How to build a JRPG"),
which you can find under this link:

http://gamedevelopment.tutsplus.com/articles/how-to-build-a-jrpg-a-primer-for-game-developers--gamedev-6676


It's a basic State-Machine for Haxe/OpenFL, that is easy to adapt to your framework
of choice. You can use it as a starting point for any game.

HOW TO USE:

Every state presents one part of your game. Included is a MainMenuState (here you build and control the main menu of your game), a GamePlayState (here the really action and fun of the game happens) and a GameOverState (if the player dies, the game changes to this state and shows a game over screen, or whatever you have in mind). 

You can add as many states as you need. For example, if you want a state for an ingame menu, you create it like this in Main.hx:

gameMode.add("ingamemenu", new IngameMenuState(gameMode, this));

gameMode is a reference to the state-machine, you need it inside the states
for change to another state, for example: gameMode.change("gameplay"); 

this is a reference to the openfl.display.Sprite your Main class extends. It
is like your "drawing canvas", where the graphics get rendered on.

Of course, you need also to add a IngameMenuState class. But this is easy - just copy MainMenuState and change it's class name, then save it under "IngameMenuState.hx" in your source folder.

Every state class has four methods (we don't count the new method here):

UPDATE  - put your game logic here, like physics, player movement..

RENDER  - here the actual drawing of the game content happens

ONENTER - this method gets called every time your game changes to this state,
		  here you can load graphic, music, level-data..

ONEXIT  - this method gets called every time your game leaves this state,
		  all the cleaning, saving of game-states.. can happen here


Have Fun!
