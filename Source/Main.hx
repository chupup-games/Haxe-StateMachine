package ;

import openfl.display.Sprite;
import openfl.Lib;


class Main extends Sprite {

	private var previousTime:Int;
	private var gameMode:StateMachine;
		
	public function new () {
		
		super ();

		create();
				
	}

	function create() {

		gameMode = new StateMachine();

		gameMode.add("mainmenu", new MainMenuState(gameMode, this));
		gameMode.add("gameplay", new GamePlayState(gameMode, this));
		gameMode.add("gameover", new GameOverState(gameMode, this));

		gameMode.change("mainmenu");

		previousTime = Lib.getTimer();

		update();

	}

	function update() {

		var currentTime = Lib.getTimer();
		var deltaTime = 0.001 * (currentTime - previousTime);
		previousTime = Lib.getTimer();

		gameMode.update(deltaTime);
		gameMode.render();

	}
		
}