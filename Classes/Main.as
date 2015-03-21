package
{
	import flash.display.MovieClip;
	import flash.display.StageQuality;
	import flash.ui.Mouse;
	public class Main extends MovieClip
	{
		/*
		public static var crosshair:Crosshair = new Crosshair();
		public static var health_bar:hud_health = new hud_health();
		public var playScreen:PlayScreen;
		*/
		
		public function Main()
		{
			Mouse.hide();
			stage.quality = StageQuality.LOW;
			
			/*
			playScreen = new PlayScreen();
			addChild(playScreen);
			
			addChild(crosshair);
			crosshair.x = mouseX; crosshair.y = mouseY;
			addChild(health_bar);
			health_bar.x = 400; health_bar.y = 325;
			*/
		}
	}
}