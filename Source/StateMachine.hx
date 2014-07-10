package ;

class StateMachine {

	var mStates:Map<String, IState> = new Map<String, IState>();
	var mCurrentState:IState = new EmptyState();

	public function new() {

	}	

	public function update(deltaTime:Float):Void {

		mCurrentState.update(deltaTime);

	}

	public function render():Void {

		mCurrentState.render();

	}

	public function change(stateName:String, ?param:Dynamic):Void {

		mCurrentState.onExit();
		mCurrentState = mStates[stateName];
		mCurrentState.onEnter(param);

	}

	public function add(name:String, state:IState):Void {

		mStates[name] = state;

	}

}