package ;

class MainMenuState implements IState {

	private var gameMode:StateMachine;
	private var game:openfl.display.Sprite;

	public function new(sm:StateMachine, sprite:openfl.display.Sprite) {
		
		gameMode = sm;
		game = sprite;

	}

	public function update(deltaTime:Float):Void {
		// code
	}

	public function render():Void {
		// code
	}

	public function onEnter(?param:Dynamic):Void {
		// code
	}
	
	public function onExit():Void {
		// code
	}

}