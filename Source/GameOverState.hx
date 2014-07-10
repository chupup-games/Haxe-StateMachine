package ;

class GameOverState implements IState {

	private var gameMode:StateMachine;

	public function new(sm:StateMachine) {
		
		gameMode = sm;

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