package ;

class EmptyState implements IState {

	public function new() {
		// no action to take in the empty state
	}

	public function update(deltaTime:Float):Void {
		// nothing to update in the empty state
	}

	public function render():Void {
		// nothing to render in the empty state
	}

	public function onEnter(?param:Dynamic):Void {
		// no action to take in the empty state
	}
	
	public function onExit():Void {
		// no action to take in the empty state
	}

}