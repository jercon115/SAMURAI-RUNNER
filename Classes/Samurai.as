package
{
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.geom.Point;
	import flash.filters.BlurFilter;
	import flash.filters.BitmapFilterQuality;
	import fl.motion.Color;
	import flash.geom.ColorTransform;
	
	public class Samurai extends MovieClip
	{
		// FX VARIABLES //
		public var v_flashColor:Color = new Color();
		public var v_flash:int = 0;
		public var v_Blur:BlurFilter = new BlurFilter();
		
		public function Samurai()
		{
			// Add an event for each frame update
			addEventListener(Event.ENTER_FRAME, onFrame);
			
			// Set position to mouse
			x = stage.mouseX; y = stage.mouseY;
			
			// Setup blur effect for movement
			v_Blur.blurX = 0; v_Blur.blurY = 0; v_Blur.quality = BitmapFilterQuality.LOW;
			filters = [v_Blur];
		}
		
		public function onFrame( event:Event )
		{
			var movX = (stage.mouseX - x)/2.0;
			var movY = (stage.mouseY - y)/2.0;
			var movDist = Math.sqrt(movX * movX + movY + movY);
			
			if (movDist/75.0 > 1.0) {
				alpha = 1.0/(movDist/75.0);
			} else
				alpha = 1.0;
			
			rotation = Math.max(Math.min(movY/1.4 + movX/1.6, 45), -45);
			
			v_Blur.blurX = Math.abs(movX)*0.5; v_Blur.blurY = Math.abs(movY)*0.5; filters = [v_Blur];
			x += movX; y += movY;
		}
	}
}