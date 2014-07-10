package ;

interface IState {

	public function update(deltaTime:Float):Void;
	public function render():Void;
	public function onEnter(?param:Dynamic):Void;
	public function onExit():Void;

}