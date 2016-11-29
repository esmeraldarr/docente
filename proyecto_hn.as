package {
	import com.transmote.flar.FLARManager;
    import com.transmote.flar.marker.FLARMarker;
    import com.transmote.flar.marker.FLARMarkerEvent;
    import com.transmote.flar.utils.geom.FLARPVGeomUtils;
	import com.adobe.images.JPGEncoder;
    
    import flash.display.Sprite;
    [SWF(width="640", height="480", frameRate="24", backgroundColor="#FFFFFF")]
    import flash.events.Event;
    
	import flash.media.Sound;
    import flash.media.SoundChannel;
    import flash.net.URLRequest;
	import flash.net.*;
	
	
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Graphics;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.media.Video;
	import flash.net.FileReference;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.utils.ByteArray;
	
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	
	
	import flash.media.*;
	
    import org.libspark.flartoolkit.support.pv3d.FLARCamera3D;
    import org.papervision3d.lights.PointLight3D;
    import org.papervision3d.objects.DisplayObject3D;
    import org.papervision3d.objects.parsers.DAE;
    import org.papervision3d.render.LazyRenderEngine;
    import org.papervision3d.scenes.Scene3D;
    import org.papervision3d.view.Viewport3D;

    import org.papervision3d.materials.BitmapFileMaterial;
	import org.papervision3d.objects.parsers.DAE;
	import org.papervision3d.view.BasicView;
	


	public class proyecto_hn extends Sprite
	{
		private var flarManager:FLARManager;
        
        private var scene3D:Scene3D;
        private var camera3D:FLARCamera3D;
        private var viewport3D:Viewport3D;
        private var renderEngine:LazyRenderEngine;
        private var pointLight3D:PointLight3D;
        
		private var activeMarker:FLARMarker;
        private var activeMarker1:FLARMarker;
        private var activeMarker2:FLARMarker;
        private var activeMarker3:FLARMarker;
		private var activeMarker4:FLARMarker;
		private var activeMarker5:FLARMarker;
		private var activeMarker6:FLARMarker;
		private var activeMarker7:FLARMarker;
		private var activeMarker8:FLARMarker
		private var activeMarker9:FLARMarker;
		private var activeMarker10:FLARMarker;
		private var activeMarker11:FLARMarker;
		private var activeMarker12:FLARMarker;
		private var activeMarker13:FLARMarker;
		private var activeMarker14:FLARMarker;
		private var activeMarker15:FLARMarker;
		private var activeMarker16:FLARMarker;
		private var activeMarker17:FLARMarker;
		private var activeMarker18:FLARMarker;
		private var activeMarker19:FLARMarker;
		private var activeMarker20:FLARMarker;
	
		
        private var modelContainer:DisplayObject3D;
        private var modelContainer1:DisplayObject3D;
		private var modelContainer2:DisplayObject3D;
        private var modelContainer3:DisplayObject3D;
		private var modelContainer4:DisplayObject3D;
		private var modelContainer5:DisplayObject3D;
		private var modelContainer6:DisplayObject3D;
		private var modelContainer7:DisplayObject3D;
		private var modelContainer8:DisplayObject3D;
		private var modelContainer9:DisplayObject3D;
		private var modelContainer10:DisplayObject3D;
		private var modelContainer11:DisplayObject3D;
		private var modelContainer12:DisplayObject3D;
		private var modelContainer13:DisplayObject3D;
		private var modelContainer14:DisplayObject3D;
		private var modelContainer15:DisplayObject3D;
		private var modelContainer16:DisplayObject3D;
		private var modelContainer17:DisplayObject3D;
		private var modelContainer18:DisplayObject3D;
		private var modelContainer19:DisplayObject3D;
		private var modelContainer20:DisplayObject3D;
		

        private var markerId:int;
        
		var general:DAE ;
		var model:DAE ;
		var model1:DAE ;
		var model2:DAE ;
		var model3:DAE ;
		var model4:DAE ;
		var model5:DAE ;
		var model6:DAE ;
		var model7:DAE ;
		var model8:DAE ;
		var model9:DAE ;
		var model10:DAE ;
		var model11:DAE ;
		var model12:DAE ;
		var model13:DAE ;
		var model14:DAE ;
		var model15:DAE ;
		var model16:DAE ;
		var model17:DAE ;
		var model18:DAE ;
		var model19:DAE ;
		var model20:DAE ;
		
		var sound:Sound;
		var sound1:Sound;
		var sound2:Sound;
		var sound3:Sound;
		var sound4:Sound;
		var sound5:Sound;
		var sound6:Sound;
		var sound7:Sound;
		var sound8:Sound;
		var sound9:Sound;
		var sound10:Sound;
		var sound11:Sound;
		var sound12:Sound;
		var sound13:Sound;
		var sound14:Sound;
		var sound15:Sound;
		var sound16:Sound;
		var sound17:Sound;
		var sound18:Sound;
		var sound19:Sound;
		var sound20:Sound;
				
		var sc_sound:SoundChannel;
		var sc_sound1:SoundChannel;
		var sc_sound2:SoundChannel;
		var sc_sound3:SoundChannel;
		var sc_sound4:SoundChannel;
		var sc_sound5:SoundChannel;
		var sc_sound6:SoundChannel;
		var sc_sound7:SoundChannel;
		var sc_sound8:SoundChannel;
		var sc_sound9:SoundChannel;
		var sc_sound10:SoundChannel;
		var sc_sound11:SoundChannel;
		var sc_sound12:SoundChannel;
		var sc_sound13:SoundChannel;
		var sc_sound14:SoundChannel;
		var sc_sound15:SoundChannel;
		var sc_sound16:SoundChannel;
		var sc_sound17:SoundChannel;
		var sc_sound18:SoundChannel;
		var sc_sound19:SoundChannel;
		var sc_sound20:SoundChannel
		
		
		public function proyecto_hn()
		{
			
	
            // pass the path to the FLARManager xml config file into the FLARManager constructor.
            // FLARManager creates and uses a FLARCameraSource by default.
            // the image from the first detected camera will be used for marker detection.
            //this.flarManager = new FLARManager("flar/flarConfig.xml");
			this.flarManager = new FLARManager("flarConfig_hn.xml");
            
            // add FLARManager.flarSource to the display list to display the video capture.
            this.addChild(Sprite(this.flarManager.flarSource));
            
            // begin listening for FLARMarkerEvents.
            this.flarManager.addEventListener(FLARMarkerEvent.MARKER_ADDED, this.onMarkerAdded);
            this.flarManager.addEventListener(FLARMarkerEvent.MARKER_UPDATED, this.onMarkerUpdated);
            this.flarManager.addEventListener(FLARMarkerEvent.MARKER_REMOVED, this.onMarkerRemoved);
            
            // wait for FLARManager to initialize before setting up Papervision3D environment.
            this.flarManager.addEventListener(Event.INIT, this.onFlarManagerInited);
        }
        
        private function onFlarManagerInited (evt:Event) :void 
        {
            this.flarManager.removeEventListener(Event.INIT, this.onFlarManagerInited);
            
            this.scene3D = new Scene3D();
            
            // initialize FLARCamera3D with parsed camera parameters.
            this.camera3D = new FLARCamera3D(this.flarManager.cameraParams);
            
            this.viewport3D = new Viewport3D(this.stage.stageWidth, this.stage.stageHeight);
            this.addChild(this.viewport3D);
            
            this.renderEngine = new LazyRenderEngine(this.scene3D, this.camera3D, this.viewport3D);
            
            this.pointLight3D = new PointLight3D();
            this.pointLight3D.x = 1000;
            this.pointLight3D.y = 1000;
            this.pointLight3D.z = -1000;
			
            // load the model. 
            // (this model has to be scaled and rotated to fit the marker; every model is different.) 
            model = new DAE(true, "model", true); 
            model.load("./assets/models/H/H.dae"); 
            model.rotationX = 90; 
            model.rotationY = 0; 
            model.rotationZ = 90; 
            model.scale = 1; 	 
			
			 
            // (this model has to be scaled and rotated to fit the marker; every model is different.) 
            model1 = new DAE(true, "model1", true); 
            model1.load("./assets/models/I/I.dae"); 
            model1.rotationX = 90; 
            model1.rotationY = 0;
            model1.rotationZ = 90; 
            model1.scale = 1; 
            
            // load the model. 
            // (this model has to be scaled and rotated to fit the marker; every model is different.) 
            model2 = new DAE(true, "model2", true); 
            model2.load("./assets/models/J/J.dae"); 
            model2.rotationX = 90; 
            model2.rotationY = 0;
            model2.rotationZ = 90; 
            model2.scale = 1; 
 
            model3 = new DAE(true, "model3", true); 
            model3.load("./assets/models/K/K.DAE"); 
            model3.rotationX = 90; 
            model3.rotationY = 0;
            model3.rotationZ = 90; 
            model3.scale = 1;
			
			model4 = new DAE(true, "model4", true); 
			model4.load("./assets/models/L/L.DAE"); 
			model4.rotationX = 90; 
			model4.rotationY = 0;
			model4.rotationZ = 90; 
			model4.scale = 1;
            
			model5 = new DAE(true, "model5", true); 
			model5.load("./assets/models/M/M.dae"); 
			model5.rotationX = 90; 
			model5.rotationY=  0;
			model5.rotationZ = 90; 
			model5.scale = 1; 
			
			model6 = new DAE(true, "model6", true); 
			model6.load("./assets/models/N/N.DAE"); 
			model6.rotationX = 90; 
			model6.rotationY=  0;
			model6.rotationZ = 90; 
			model6.scale = 1; 
						
			model7 = new DAE(true, "model7", true); 
			model7.load("./assets/models/figuras/helado/helado.dae"); 
			model7.rotationX = 90; 
			model7.rotationY = 0;
			model7.rotationZ = -90; 
			model7.scale = 1; 
			
			model8 = new DAE(true, "model8", true); 
			model8.load("./assets/models/figuras/hacha/hacha.dae"); 
			model8.rotationX = 90; 
			model8.rotationY = 0;
			model8.rotationZ = 90; 
			model8.scale = 1; 
			
			model9 = new DAE(true, "model9", true); 
			model9.load("./assets/models/figuras/iglesia/iglesia.dae"); 
			model9.rotationX = 90; 
			model9.rotationY = 0;
			model9.rotationZ = -90; 
			model9.scale = 1; 
			
			model10 = new DAE(true, "model10", true); 
			model10.load("./assets/models/figuras/iman/iman.dae"); 
			model10.rotationX = 90; 
			model10.rotationY = 0;
			model10.rotationZ = 0; 
			model10.scale = 1; 
			
			model11 = new DAE(true, "model11", true); 
			model11.load("./assets/models/figuras/jirafa/jirafa.dae"); 
			model11.rotationX = 90; 
			model11.rotationY = 0;
			model11.rotationZ = 90; 
			model11.scale = 1; 
			
			model12 = new DAE(true, "model15", true); 
			model12.load("./assets/models/figuras/jabon/jabon.dae"); 
			model12.rotationX = 90; 
			model12.rotationY = 0;
			model12.rotationZ = -180; 
			model12.scale = 1; 
			
			model13 = new DAE(true, "model13", true);
			model13.load("./assets/models/figuras/kilo/kilo.DAE");
			model13.rotationX = 90;
			model13.rotationY = 0;
			model13.rotationZ = 90;
			model13.scale = 1;
			
			model14 = new DAE(true, "model14", true);
			model14.load("./assets/models/figuras/kilo/kilo.DAE");
			model14.rotationX = 90;
			model14.rotationY = 0;
			model14.rotationZ = 0;
			model14.scale = 1;
			
			model15 = new DAE(true, "model15", true);
			model15.load("./assets/models/figuras/lentes/lentes.dae");
			model15.rotationX = 90;
			model15.rotationY = 0;
			model15.rotationZ = -180;
			model15.scale = 1;
			
			model16 = new DAE(true, "model16", true);
			model16.load("./assets/models/figuras/limon/limon.dae");
			model16.rotationX = 90;
			model16.rotationY = 0;
			model16.rotationZ = 90;
			model16.scale = 1;
			
			model17 = new DAE(true, "model17", true);
			model17.load("./assets/models/figuras/mesa/mesa.DAE");
			model17.rotationX = 90;
			model17.rotationY = 0;
			model17.rotationZ = 90;
			model17.scale = 1;
			
			model18 = new DAE(true, "model18", true);
			model18.load("./assets/models/figuras/manzana/manzana.dae");
			model18.rotationX = 90;
			model18.rotationY = 0;
			model18.rotationZ = 90;
			model18.scale = 1;
			
			model19 = new DAE(true, "model19", true);
			model19.load("./assets/models/figuras/nueve/NUEVE.DAE");
			model19.rotationX = 90;
			model19.rotationY = 0;
			model19.rotationZ = 90;
			model19.scale = 1;
			
			model20 = new DAE(true, "model20", true);
			model20.load("./assets/models/figuras/naranja/naranja.dae");
			model20.rotationX = 90;
			model20.rotationY = 0;
			model20.rotationZ = 90;
			model20.scale = 1;
			
			
			
			
						
            // create a container for the model, that will accept matrix transformations.
            this.modelContainer = new DisplayObject3D();
            this.modelContainer.addChild(model);
            this.modelContainer.visible = false;
            this.scene3D.addChild(this.modelContainer);
                     
            
            this.modelContainer1 = new DisplayObject3D();
            this.modelContainer1.addChild(model1);
            this.modelContainer1.visible = false;
            this.scene3D.addChild(this.modelContainer1);
            
			this.modelContainer2 = new DisplayObject3D();
			this.modelContainer2.addChild(model2);
			this.modelContainer2.visible = false;
			this.scene3D.addChild(this.modelContainer2);
            
            this.modelContainer3 = new DisplayObject3D();
            this.modelContainer3.addChild(model3);
            this.modelContainer3.visible = false;
            this.scene3D.addChild(this.modelContainer3);
			
			this.modelContainer4 = new DisplayObject3D();
			this.modelContainer4.addChild(model4);
			this.modelContainer4.visible = false;
			this.scene3D.addChild(this.modelContainer4);
			
			this.modelContainer5 = new DisplayObject3D();
			this.modelContainer5.addChild(model5);
			this.modelContainer5.visible = false;
			this.scene3D.addChild(this.modelContainer5);
			
			this.modelContainer6 = new DisplayObject3D();
			this.modelContainer6.addChild(model6);
			this.modelContainer6.visible = false;
			this.scene3D.addChild(this.modelContainer6);
			
			this.modelContainer7 = new DisplayObject3D();
			this.modelContainer7.addChild(model7);
			this.modelContainer7.visible = false;
			this.scene3D.addChild(this.modelContainer7);
			
			this.modelContainer8 = new DisplayObject3D();
			this.modelContainer8.addChild(model8);
			this.modelContainer8.visible = false;
			this.scene3D.addChild(this.modelContainer8);
			
			this.modelContainer9 = new DisplayObject3D();
			this.modelContainer9.addChild(model9);
			this.modelContainer9.visible = false;
			this.scene3D.addChild(this.modelContainer9);
			
			this.modelContainer10 = new DisplayObject3D();
			this.modelContainer10.addChild(model10);
			this.modelContainer10.visible = false;
			this.scene3D.addChild(this.modelContainer10);
			
			this.modelContainer11 = new DisplayObject3D();
			this.modelContainer11.addChild(model11);
			this.modelContainer11.visible = false;
			this.scene3D.addChild(this.modelContainer11);
			
			this.modelContainer12 = new DisplayObject3D();
			this.modelContainer12.addChild(model12);
			this.modelContainer12.visible = false;
			this.scene3D.addChild(this.modelContainer12);
			
			this.modelContainer13 = new DisplayObject3D();
			this.modelContainer13.addChild(model13);
			this.modelContainer13.visible = false;
			this.scene3D.addChild(this.modelContainer13);
			
			this.modelContainer14 = new DisplayObject3D();
			this.modelContainer14.addChild(model14);
			this.modelContainer14.visible = false;
			this.scene3D.addChild(this.modelContainer14);
			
			this.modelContainer15 = new DisplayObject3D();
			this.modelContainer15.addChild(model15);
			this.modelContainer15.visible = false;
			this.scene3D.addChild(this.modelContainer15);
			
			this.modelContainer16 = new DisplayObject3D();
			this.modelContainer16.addChild(model16);
			this.modelContainer16.visible = false;
			this.scene3D.addChild(this.modelContainer16);
			
			this.modelContainer17 = new DisplayObject3D();
			this.modelContainer17.addChild(model17);
			this.modelContainer17.visible = false;
			this.scene3D.addChild(this.modelContainer17);
			
			this.modelContainer18 = new DisplayObject3D();
			this.modelContainer18.addChild(model18);
			this.modelContainer18.visible = false;
			this.scene3D.addChild(this.modelContainer18);
			
			this.modelContainer19 = new DisplayObject3D();
			this.modelContainer19.addChild(model19);
			this.modelContainer19.visible = false;
			this.scene3D.addChild(this.modelContainer19);
			
			this.modelContainer20 = new DisplayObject3D();
			this.modelContainer20.addChild(model20);
			this.modelContainer20.visible = false;
			this.scene3D.addChild(this.modelContainer20);
			
			
			
			// aqui
			
					//-------------------------------INICIO DE LOS BOTONES----------------------------//	
			
			//primero creamos el Sprite para nuestro boton
			var button1:Sprite = new Sprite();
			// dibujamos el rectangulo que aparece en el swf de color "blanco".
			//incluimos las coordenadas del mismo en la seccion .drawRect(10, 10, 50, 30)
			button1.graphics.beginFill(0xFFFFFF, 1);
			button1.graphics.drawRect(10, 10, 50, 30);
			button1.graphics.endFill();
			// Agregamos el boton a la escena
			button1.buttonMode  = true;
			button1.mouseChildren = false;
			//luego hacemos lo mismo para todos los botones.
	
						
	//-------------------------------FIN DE LOS BOTONES----------------------------//		
		
   //-------------------------------INICIO DEL TEXTO QUE SE INCLUIRA EN CADA UNO DE LOS BOTONES----------------------------//		
			
			
			//para crear el texto del primer boton. Creamos la variable, y le otorgamos unas caracteristicas
			//como por ejemplo el color del texto, lo que tendra escrito el boton, posicion, etc.
			var texto1:TextField = new TextField();
			with (texto1){
				selectable = false;
				text = "FOTO"
			    textColor=0x000000;
				x=20;
				y=20;	
			}
			//le decimos que al button1 le agreguemos el texto1 o sea la palabra "tierra". y lo agregamos a scena.
			button1.addChild(texto1);			
			addChild(button1);
			
			
			// Realizamos el mismo proceso para cada uno de los textos que contrendran los botones.
			
			
	//-------------------------------FIN DEL TEXTO QUE SE INCLUIRA EN CADA UNO DE LOS BOTONES----------------------------//					
			
	//----------AGREGAMOS LOS addEventListener CORRESPONDIENTES A CADA UNO DE LOS EVENTOS QUE VAMOS A HACER CON LOS BOTONES------//	
			
			button1.addEventListener(MouseEvent.CLICK,foto);
			
			
			
            //------------------------------------------------------------------------- --------- 
			
			stage.addEventListener(KeyboardEvent.KEY_DOWN, updateP);
			
            this.addEventListener(Event.ENTER_FRAME, this.onEnterFrame); 
			
	
	
				
			
			
       } 
           // movimiento  
		   private function updateP(e:KeyboardEvent):void {
			switch( e.keyCode )
			{
				case "W".charCodeAt():
				case Keyboard.UP:
				general.moveForward(5);
				break;
				
				case "S".charCodeAt():
				case Keyboard.DOWN:
				general.moveBackward(5);
				break;
				
				case "A".charCodeAt():
				case Keyboard.LEFT:
				general.moveLeft(5);
				break;
				
				case "D".charCodeAt():
				case Keyboard.RIGHT:
				general.moveRight(5);
				break;
				
			}
		}	
		   
		   
		
			private function onMarkerAdded ( evt:FLARMarkerEvent) :void
			{
				
					trace("["+evt.marker.patternId+"] added");
					
					if(evt.marker.patternId == 0)
					{
							trace("Pattern 00 Added");
							markerAdded(1);
							this.activeMarker = evt.marker;
							sc_sound = new SoundChannel;
    						sound = new Sound;
							sound.load(new URLRequest("./assets/sonido/letras/Letra_H.mp3"));
							sc_sound = sound.play(0,1);
							general = model;
					}
					
					
					if(evt.marker.patternId == 1)
				{
					 trace('Pattern 1 Added');
					 markerAdded(2);
					 this.activeMarker1 = evt.marker;
					 sc_sound1 = new SoundChannel;
					 sound1 = new Sound;
					 sound1.load(new URLRequest('./assets/sonido/letras/Letra_I.mp3'));
					 sc_sound1 = sound1.play(0,1);
					 general = model1;
				}

				if(evt.marker.patternId == 2)
				{
					 trace('Pattern 2 Added');
					 markerAdded(3);
					 this.activeMarker2 = evt.marker;
					 sc_sound2 = new SoundChannel;
					 sound2 = new Sound;
					 sound2.load(new URLRequest('./assets/sonido/letras/Letra_J.mp3'));
					 sc_sound2 = sound2.play(0,1);
					 general = model2;
				}
				
				if(evt.marker.patternId == 3)
				{
					 trace('Pattern 3 Added');
					 markerAdded(4);
					 this.activeMarker3 = evt.marker;
					 sc_sound3 = new SoundChannel;
					 sound3 = new Sound;
					 sound3.load(new URLRequest('./assets/sonido/letras/Letra_K.mp3'));
					 sc_sound3 = sound3.play(0,1);
					 general = model3;
				}
				
				if(evt.marker.patternId == 4)
				{
					 trace('Pattern 4 Added');
					 markerAdded(5);
					 this.activeMarker4 = evt.marker;
					 sc_sound4 = new SoundChannel;
					 sound4 = new Sound;
					 sound4.load(new URLRequest('./assets/sonido/letras/Letra_L.mp3'));
					 sc_sound4 = sound4.play(0,1);
					 general = model4;
				}
				
				if(evt.marker.patternId == 5)
				{
					 trace('Pattern 5 Added');
					 markerAdded(6);
					 this.activeMarker5 = evt.marker;
					 sc_sound5 = new SoundChannel;
					 sound5 = new Sound;
					 sound5.load(new URLRequest('./assets/sonido/letras/letra_M.mp3'));
					 sc_sound5 = sound5.play(0,1);
					 general = model5;
				}
				
				if(evt.marker.patternId == 6)
				{
					 trace('Pattern 6 Added');
					 markerAdded(7);
					 this.activeMarker6 = evt.marker;
					 sc_sound6 = new SoundChannel;
					 sound6 = new Sound;
					 sound6.load(new URLRequest('./assets/sonido/letras/Letra_N.mp3'));
					 sc_sound6 = sound6.play(0,1);
					 general = model6;
				}
				
				if(evt.marker.patternId == 7)
				{
					 trace('Pattern 7 Added');
					 markerAdded(8);
					 this.activeMarker7 = evt.marker;
					 sc_sound7 = new SoundChannel;
					 sound7 = new Sound;
					 sound7.load(new URLRequest('./assets/sonido/figuras/H_helado.mp3'));
					 sc_sound7 = sound7.play(0,1);
					 general = model7;
				}
				
				if(evt.marker.patternId == 8)
				{
					 trace('Pattern 8 Added');
					 markerAdded(9);
					 this.activeMarker8 = evt.marker;
					 sc_sound8 = new SoundChannel;
					 sound8 = new Sound;
					 sound8.load(new URLRequest('./assets/sonido/figuras/H_hacha.mp3'));
					 sc_sound8 = sound8.play(0,1);
					 general = model8;
				}
				
				if(evt.marker.patternId == 9)
				{
					 trace('Pattern 9 Added');
					 markerAdded(10);
					 this.activeMarker9 = evt.marker;
					 sc_sound9 = new SoundChannel;
					 sound9 = new Sound;
					 sound9.load(new URLRequest('./assets/sonido/figuras/I_iglesia.mp3'));
					 sc_sound9 = sound9.play(0,1);
					 general = model9;
				}
				
				if(evt.marker.patternId == 10)
				{
					 trace('Pattern 10 Added');
					 markerAdded(11);
					 this.activeMarker10 = evt.marker;
					 sc_sound10 = new SoundChannel;
					 sound10 = new Sound;
					 sound10.load(new URLRequest('./assets/sonido/figuras/I_iman.mp3'));
					 sc_sound10 = sound10.play(0,1);
					 general = model10;
				}
				
				if(evt.marker.patternId == 11)
				{
					 trace('Pattern 11 Added');
					 markerAdded(12);
					 this.activeMarker11 = evt.marker;
					 sc_sound11 = new SoundChannel;
					 sound11 = new Sound;
					 sound11.load(new URLRequest('./assets/sonido/figuras/J_jirafa.mp3'));
					 sc_sound11 = sound11.play(0,1);
					 general = model11;
				}
				
				if(evt.marker.patternId == 12)
				{
					 trace('Pattern 12 Added');
					 markerAdded(13);
					 this.activeMarker12 = evt.marker;
					 sc_sound12 = new SoundChannel;
					 sound12 = new Sound;
					 sound12.load(new URLRequest('./assets/sonido/figuras/J_jabon.mp3'));
					 sc_sound12 = sound12.play(0,1);
					 general = model12;
				}
				
				if(evt.marker.patternId == 13)
				{
					 trace('Pattern 13 Added');
					 markerAdded(14);
					 this.activeMarker13 = evt.marker;
					 sc_sound13 = new SoundChannel;
					 sound13 = new Sound;
					 sound13.load(new URLRequest('./assets/sonido/figuras/K_kilo.mp3'));
					 sc_sound13 = sound13.play(0,1);
					 general = model13;
				}
				
				if(evt.marker.patternId == 14)
				{
					 trace('Pattern 14 Added');
					 markerAdded(15);
					 this.activeMarker14 = evt.marker;
					 sc_sound14 = new SoundChannel;
					 sound14 = new Sound;
					 sound14.load(new URLRequest('./assets/sonido/figuras/K_kilo.mp3'));
					 sc_sound14 = sound14.play(0,1);
					 general = model14;
				}
				
				if(evt.marker.patternId == 15)
				{
					 trace('Pattern 15 Added');
					 markerAdded(16);
					 this.activeMarker15 = evt.marker;
					 sc_sound15 = new SoundChannel;
					 sound15 = new Sound;
					 sound15.load(new URLRequest('./assets/sonido/figuras/L_lentes.mp3'));
					 sc_sound15 = sound15.play(0,1);
					 general = model15;
				}
				
				if(evt.marker.patternId == 16)
				{
					 trace('Pattern 16 Added');
					 markerAdded(17);
					 this.activeMarker16 = evt.marker;
					 sc_sound16 = new SoundChannel;
					 sound16 = new Sound;
					 sound16.load(new URLRequest('./assets/sonido/figuras/L_limon.mp3'));
					 sc_sound16 = sound16.play(0,1);
					 general = model16;
				}
				
				if(evt.marker.patternId == 17)
				{
					 trace('Pattern 17 Added');
					 markerAdded(18);
					 this.activeMarker17 = evt.marker;
					 sc_sound17 = new SoundChannel;
					 sound17 = new Sound;
					 sound17.load(new URLRequest('./assets/sonido/figuras/M_mesa.mp3'));
					 sc_sound17 = sound17.play(0,1);
					 general = model17;
				}
				
				if(evt.marker.patternId == 18)
				{
					 trace('Pattern 18 Added');
					 markerAdded(19);
					 this.activeMarker18 = evt.marker;
					 sc_sound18 = new SoundChannel;
					 sound18 = new Sound;
					 sound18.load(new URLRequest('./assets/sonido/figuras/M_manzana.mp3'));
					 sc_sound18 = sound18.play(0,1);
					 general = model18;
				}
				
				if(evt.marker.patternId == 19)
				{
					 trace('Pattern 19 Added');
					 markerAdded(20);
					 this.activeMarker19 = evt.marker;
					 sc_sound19 = new SoundChannel;
					 sound19 = new Sound;
					 sound19.load(new URLRequest('./assets/sonido/figuras/N_nueve.mp3'));
					 sc_sound19 = sound19.play(0,1);
					 general = model19;
				}
				
				if(evt.marker.patternId == 20)
				{
					 trace('Pattern 20 Added');
					 markerAdded(21);
					 this.activeMarker20 = evt.marker;
					 sc_sound20 = new SoundChannel;
					 sound20 = new Sound;
					 sound20.load(new URLRequest('./assets/sonido/figuras/N_naranja.mp3'));
					 sc_sound20 = sound20.play(0,1);
					 general = model20;
				}
					
					
					
			}
		   
			private function onMarkerUpdated (evt:FLARMarkerEvent) :void 
         	{ 
	            trace("["+evt.marker.patternId+"] updated"); 
				
	            if(evt.marker.patternId == 0)
	            {
		            trace("Pattern 0 Updated"); 
		            markerAdded(1);
		            this.activeMarker = evt.marker; 
	            }
	            if(evt.marker.patternId == 1)
	            {
		            trace("Pattern 01 Updated"); 
		            markerAdded(2);
		            this.activeMarker1 = evt.marker; 
	            }
	            if(evt.marker.patternId == 2)
	            {
		            trace("Pattern 02 Updated"); 
		            markerAdded(3);
		            this.activeMarker2 = evt.marker; 
            	}
				if(evt.marker.patternId == 3)
				{
					trace("Pattern 03 Updated"); 
					markerAdded(4);
					this.activeMarker3 = evt.marker; 
					
				}
				if(evt.marker.patternId == 4)
				{
					trace("Pattern 04 Updated"); 
					markerAdded(5);
					this.activeMarker4 = evt.marker; 
				}
				if(evt.marker.patternId == 5)
				{
					trace("Pattern 05 Updated"); 
					markerAdded(6);
					this.activeMarker5 = evt.marker; 
				}
				if(evt.marker.patternId == 6)
				{
					trace("Pattern 06 Updated"); 
					markerAdded(7);
					this.activeMarker6 = evt.marker; 
				}
				if(evt.marker.patternId == 7)
				{
					trace("Pattern 07 Updated"); 
					markerAdded(8);
					this.activeMarker7 = evt.marker; 
				}
				
				if(evt.marker.patternId == 8)
				{
					trace("Pattern 8 Updated"); 
					markerAdded(9);
					this.activeMarker8 = evt.marker; 
				}
				if(evt.marker.patternId == 9)
				{
					trace("Pattern 9 Updated"); 
					markerAdded(10);
					this.activeMarker9 = evt.marker; 
				}
				if(evt.marker.patternId == 10)
				{
					trace("Pattern 10 Updated"); 
					markerAdded(11);
					this.activeMarker10 = evt.marker; 
				}
				if(evt.marker.patternId == 11)
				{
					trace("Pattern 11 Updated"); 
					markerAdded(12);
					this.activeMarker12 = evt.marker; 
				}
				if(evt.marker.patternId == 12)
				{
					trace("Pattern 12 Updated"); 
					markerAdded(13);
					this.activeMarker12 = evt.marker; 
				}
				if(evt.marker.patternId == 13)
				{
					trace("Pattern 13 Updated"); 
					markerAdded(14);
					this.activeMarker13 = evt.marker; 
				}
				
				if(evt.marker.patternId == 14)
				{
				trace("Pattern 14 Update");
				markerAdded(15);
				this.activeMarker14 = evt.marker;
				}
				
				if(evt.marker.patternId == 15)
				{
				trace("Pattern 15 Update");
				markerAdded(16);
				this.activeMarker15 = evt.marker;
				}
				
				if(evt.marker.patternId == 16)
				{
				trace("Pattern 16 Update");
				markerAdded(17);
				this.activeMarker16 = evt.marker;
				}
				
				if(evt.marker.patternId == 17)
				{
				trace("Pattern 17 Update");
				markerAdded(18);
				this.activeMarker17 = evt.marker;
				}
				
				if(evt.marker.patternId == 18)
				{
				trace("Pattern 18 Update");
				markerAdded(19);
				this.activeMarker18 = evt.marker;
				}
				
				if(evt.marker.patternId == 19)
				{
				trace("Pattern 19 Update");
				markerAdded(20);
				this.activeMarker19 = evt.marker;
				}
				
				if(evt.marker.patternId == 20)
				{
				trace("Pattern 20 Update");
				markerAdded(21);
				this.activeMarker20 = evt.marker;
				}
				
								
									
            } 
            
             private function onMarkerRemoved (evt:FLARMarkerEvent) :void { 
            trace("["+evt.marker.patternId+"] removed"); 
           
            if(evt.marker.patternId == 0)
            {
            trace("Pattern 0 Removed");
            markerRemoved(1);
			
            }
			if(evt.marker.patternId == 1)
			{
				 trace('Pattern 1 Removed');
				 markerRemoved(2);
				 sc_sound1.stop();
			}
			
			if(evt.marker.patternId == 2)
			{
				 trace('Pattern 2 Removed');
				 markerRemoved(3);
				 sc_sound2.stop();
			}
			
			if(evt.marker.patternId == 3)
			{
				 trace('Pattern 3 Removed');
				 markerRemoved(4);
				 sc_sound3.stop();
			}
			
			if(evt.marker.patternId == 4)
			{
				 trace('Pattern 4 Removed');
				 markerRemoved(5);
				 sc_sound4.stop();
			}
			
			if(evt.marker.patternId == 5)
			{
				 trace('Pattern 5 Removed');
				 markerRemoved(6);
				 sc_sound5.stop();
			}
			
			if(evt.marker.patternId == 6)
			{
				 trace('Pattern 6 Removed');
				 markerRemoved(7);
				 sc_sound6.stop();
			}
			
			if(evt.marker.patternId == 7)
			{
				 trace('Pattern 7 Removed');
				 markerRemoved(8);
				 sc_sound7.stop();
			}
			
			if(evt.marker.patternId == 8)
			{
				 trace('Pattern 8 Removed');
				 markerRemoved(9);
				 sc_sound8.stop();
			}
			
			if(evt.marker.patternId == 9)
			{
				 trace('Pattern 9 Removed');
				 markerRemoved(10);
				 sc_sound9.stop();
			}
			
			if(evt.marker.patternId == 10)
			{
				 trace('Pattern 10 Removed');
				 markerRemoved(11);
				 sc_sound10.stop();
			}
			
			if(evt.marker.patternId == 11)
			{
				 trace('Pattern 11 Removed');
				 markerRemoved(12);
				 sc_sound11.stop();
			}
			
			if(evt.marker.patternId == 12)
			{
				 trace('Pattern 12 Removed');
				 markerRemoved(13);
				 sc_sound12.stop();
			}
			
			if(evt.marker.patternId == 13)
			{
				 trace('Pattern 13 Removed');
				 markerRemoved(14);
				 sc_sound13.stop();
			}
			
			if(evt.marker.patternId == 14)
			{
				 trace('Pattern 14 Removed');
				 markerRemoved(15);
				 sc_sound14.stop();
			}
			
			if(evt.marker.patternId == 15)
			{
				 trace('Pattern 15 Removed');
				 markerRemoved(16);
				 sc_sound15.stop();
			}
			
			if(evt.marker.patternId == 16)
			{
				 trace('Pattern 16 Removed');
				 markerRemoved(17);
				 sc_sound16.stop();
			}
			
			if(evt.marker.patternId == 17)
			{
				 trace('Pattern 17 Removed');
				 markerRemoved(18);
				 sc_sound17.stop();
			}
			
			if(evt.marker.patternId == 18)
			{
				 trace('Pattern 18 Removed');
				 markerRemoved(19);
				 sc_sound18.stop();
			}
			
			if(evt.marker.patternId == 19)
			{
				 trace('Pattern 19 Removed');
				 markerRemoved(20);
				 sc_sound19.stop();
			}
			
			if(evt.marker.patternId == 20)
			{
				 trace('Pattern 20 Removed');
				 markerRemoved(21);
				 sc_sound20.stop();
			}
			
			
						
			
            this.activeMarker = null;
            this.activeMarker1 = null; 
            this.activeMarker2 = null;
            this.activeMarker3 = null;
			this.activeMarker4 = null;
			this.activeMarker5 = null;
			this.activeMarker6 = null;
			this.activeMarker7 = null;
			this.activeMarker8 = null;
			this.activeMarker9 = null;
			this.activeMarker10 = null;
			this.activeMarker11 = null;
			this.activeMarker12 = null;
			this.activeMarker13 = null;
			this.activeMarker14 = null;
			this.activeMarker15 = null;
			this.activeMarker16 = null;
			this.activeMarker17 = null;
			this.activeMarker18 = null;
			this.activeMarker19 = null;
			this.activeMarker20 = null;
					
			
            } 
            
             private function onEnterFrame (evt:Event) :void { 
                 
                 // apply the FLARToolkit transformation matrix to the Cube.
				 if (this.activeMarker) {
                this.modelContainer.transform = FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker.transformMatrix);
                }
                
                if (this.activeMarker1) {
                this.modelContainer1.transform = FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker1.transformMatrix);
                }
                
                if (this.activeMarker2) {
                this.modelContainer2.transform = FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker2.transformMatrix);
                }
                
                if (this.activeMarker3) {
                this.modelContainer3.transform = FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker3.transformMatrix);
                }
				
				if (this.activeMarker4) {
					this.modelContainer4.transform = FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker4.transformMatrix);
				}
				
				if (this.activeMarker5) {
					this.modelContainer5.transform = FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker5.transformMatrix);
				}
				
				if (this.activeMarker6) {
					this.modelContainer6.transform = FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker6.transformMatrix);
				}
				
				if (this.activeMarker7) {
					this.modelContainer7.transform = FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker7.transformMatrix);
				}
				
				if (this.activeMarker8) {
					this.modelContainer8.transform = FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker8.transformMatrix);
				}
				
				if (this.activeMarker9) {
					this.modelContainer9.transform = FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker9.transformMatrix);
				}
				
				if (this.activeMarker10) {
				this.modelContainer10.transform = FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker10.transformMatrix);
				}
				
				if (this.activeMarker11) {
				this.modelContainer11.transform = FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker11.transformMatrix);
				}
				
				if (this.activeMarker12) {
				this.modelContainer12.transform = FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker12.transformMatrix);
				}
				
				if (this.activeMarker13) {
				this.modelContainer13.transform = FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker13.transformMatrix);
				}
				
				if (this.activeMarker14) {
				this.modelContainer14.transform = FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker14.transformMatrix);
				}

                if (this.activeMarker15) {
                this.modelContainer15.transform =  FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker15.transformMatrix);
                }
                
                if (this.activeMarker16) {
                this.modelContainer16.transform =  FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker16.transformMatrix);
                }
                
                if (this.activeMarker17) {
                this.modelContainer17.transform = FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker17.transformMatrix);
                }
                
                if (this.activeMarker18) {
                this.modelContainer18.transform = FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker18.transformMatrix);
                }
				
				if (this.activeMarker19) {
				this.modelContainer19.transform = FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker19.transformMatrix);
				}
				
				if (this.activeMarker20) {
				this.modelContainer20.transform = FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker20.transformMatrix);
				}
				
				
              this.renderEngine.render(); 
             }
             
    
                
                // THIS IS POTENTIALLY THE ANSWER TO ALL THE PROBLEMS FACED DURING THIS CODE.
                
                //EVENTS FOR ADDED MARKER
                
            private function markerAdded(markerId:int):void
            {
                trace(markerId);
                var x:int = markerId;
                switch(x)
                {
                    case 1:
                    {
                        
                        if(modelContainer.visible==false)
                        {
                            modelContainer.visible=true;
                            break;
                        }
                        else
                            break;    
                    }
                    case 2:
                    {
                        if(modelContainer1.visible==false)
                        {
                            modelContainer1.visible=true;
                            break;
                        }
                        else
                            break;
                    }
                    case 3:
                    {
                        
                        if(modelContainer2.visible==false)
                        {
                            modelContainer2.visible=true;
                            break;
                        }
                        else
                            break;    
                    }
					case 4:
					{
						
						if(modelContainer3.visible==false)
						{
							modelContainer3.visible=true;
							break;
						}
						else
							break;    
					}
					case 5:
					{
						
						if(modelContainer4.visible==false)
						{
							modelContainer4.visible=true;
							break;
						}
						else
							break;    
					}
					case 6:
					{
						
						if(modelContainer5.visible==false)
						{
							modelContainer5.visible=true;
							break;
						}
						else
							break;    
					}
					case 7:
					{
						
						if(modelContainer6.visible==false)
						{
							modelContainer6.visible=true;
							break;
						}
						else
							break;    
					}
					case 8:
					{
						
						if(modelContainer7.visible==false)
						{
							modelContainer7.visible=true;
							break;
						}
						else
							break;    
					}
					
					case 9:
					{
						
						if(modelContainer8.visible==false)
						{
							modelContainer8.visible=true;
							break;
						}
						else
							break;    
					}
					
					case 10:
					{
						
						if(modelContainer9.visible==false)
						{
							modelContainer9.visible=true;
							break;
						}
						else
							break;    
					}
					case 11:
					{
						
						if(modelContainer10.visible==false)
						{
							modelContainer10.visible=true;
							break;
						}
						else
							break;    
					}
					case 12:
					{
						
						if(modelContainer11.visible==false)
						{
							modelContainer11.visible=true;
							break;
						}
						else
							break;    
					}
					case 13:
					{
						
						if(modelContainer12.visible==false)
						{
							modelContainer12.visible=true;
							break;
						}
						else
							break;    
					}
					
					case 14:
					{
					  if(modelContainer13.visible==false)
					{
					   modelContainer13.visible=true;
					   break;
					}
					  else
						break;
					}
					
					case 15:
					{
					  if(modelContainer14.visible==false)
					{
					   modelContainer14.visible=true;
					   break;
					}
					  else
						break;
					}
					
					case 16:
					{
					  if(modelContainer15.visible==false)
					{
					   modelContainer15.visible=true;
					   break;
					}
					  else
						break;
					}
					
					case 17:
					{
					  if(modelContainer16.visible==false)
					{
					   modelContainer16.visible=true;
					   break;
					}
					  else
						break;
					}
					
					case 18:
					{
					  if(modelContainer17.visible==false)
					{
					   modelContainer17.visible=true;
					   break;
					}
					  else
						break;
					}
					
					case 19:
					{
					  if(modelContainer18.visible==false)
					{
					   modelContainer18.visible=true;
					   break;
					}
					  else
						break;
					}
					
					case 20:
					{
					  if(modelContainer19.visible==false)
					{
					   modelContainer19.visible=true;
					   break;
					}
					  else
						break;
					}
					
					case 21:
					{
					  if(modelContainer20.visible==false)
					{
					   modelContainer20.visible=true;
					   break;
					}
					  else
						break;
					}
					
										
                }
                
            }
            
            private function markerRemoved(markerId:int):void
            {
                var x:int = markerId;
                switch(x)
                {
                    case 1:
                    {
                        if(modelContainer.visible==true)
                        {
                            modelContainer.visible=false;
                            break;
                        }
                        else
                         {
                            break;
                        }
                    }
                    
                    case 2:
                    {
                        if(modelContainer1.visible==true)
                        {
                            modelContainer1.visible=false;
                            break;
                        }
                        else
                        {
                            break;
                        }
                    }
                    
                    case 3:
                    {
                        if(modelContainer2.visible==true)
                        {
                            modelContainer2.visible=false;
                            break;
                        }
                        else
						{
                            break;
						}
                    }
					case 4:
					{
						if(modelContainer3.visible==true)
						{
							modelContainer3.visible=false;
							break;
						}
						else
						{
							break;
						}
					}
					case 5:
					{
						if(modelContainer4.visible==true)
						{
							modelContainer4.visible=false;
							break;
						}
						else
						{
							break;
						}
					}
					case 6:
					{
						if(modelContainer5.visible==true)
						{
							modelContainer5.visible=false;
							break;
						}
						else
						{
							break;
						}
					}
					case 7:
					{
						if(modelContainer6.visible==true)
						{
							modelContainer6.visible=false;
							break;
						}
						else
						{
							break;
						}
					}
					case 8:
					{
						if(modelContainer7.visible==true)
						{
							modelContainer7.visible=false;
							break;
						}
						else
						{
							break;
						}
					}
					
					case 9:
					{
						
						if(modelContainer8.visible==true)
						{
							modelContainer8.visible=false;
							break;
						}
						else
							{
							break;
						}  
					}
					
					case 10:
					{
						
						if(modelContainer9.visible==true)
						{
							modelContainer9.visible=false;
							break;
						}
						else
							{
							break;
						}   
					}
					case 11:
					{
						
						if(modelContainer10.visible==true)
						{
							modelContainer10.visible=false;
							break;
						}
						else
							{
							break;
						} 
					}
					case 12:
					{
						
						if(modelContainer11.visible==true)
						{
							modelContainer11.visible=false;
							break;
						}
						else
							{
							break;
						}  
					}
					case 13:
					{
						
						if(modelContainer12.visible==true)
						{
							modelContainer12.visible=false;
							break;
						}
						else
							{
							break;
						}  
					}
					
					case 14:
					{
					  if(modelContainer13.visible==true)
					{
					   modelContainer13.visible=false;
					   break;
					}
					  else
						{
						break;
					   }
					}
					
					case 15:
					{
					  if(modelContainer14.visible==true)
					{
					   modelContainer14.visible=false;
					   break;
					}
					  else
						{
						break;
					   }
					}
					
					case 16:
					{
					  if(modelContainer15.visible==true)
					{
					   modelContainer15.visible=false;
					   break;
					}
					  else
						{
						break;
					   }
					}
					
					case 17:
					{
					  if(modelContainer16.visible==true)
					{
					   modelContainer16.visible=false;
					   break;
					}
					  else
						{
						break;
					   }
					}
					
					case 18:
					{
					  if(modelContainer17.visible==true)
					{
					   modelContainer17.visible=false;
					   break;
					}
					  else
						{
						break;
					   }
					}
					
					case 19:
					{
					  if(modelContainer18.visible==true)
					{
					   modelContainer18.visible=false;
					   break;
					}
					  else
						{
						break;
					   }
					}
					
					case 20:
					{
					  if(modelContainer19.visible==true)
					{
					   modelContainer19.visible=false;
					   break;
					}
					  else
						{
						break;
					   }
					}
					
					case 21:
					{
					  if(modelContainer20.visible==true)
					{
					   modelContainer20.visible=false;
					   break;
					}
					  else
						{
						break;
					   }
					}
					
									
									
                }
            }
    
	// aqui termina
	
	private function foto(e:MouseEvent):void 
		{
           
		   var saveBitmapData:BitmapData = new BitmapData(stage.width, stage.height);
            saveBitmapData.draw(stage);
			
            var encoder:JPGEncoder = new JPGEncoder();
            var rawBytes:ByteArray = encoder.encode(saveBitmapData);
			
            var saveFileRef:FileReference = new FileReference();
            saveFileRef.save(rawBytes);    
			
			}
			
		
	}    

}
