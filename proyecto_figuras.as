package {
	import com.transmote.flar.FLARManager;
    import com.transmote.flar.marker.FLARMarker;
    import com.transmote.flar.marker.FLARMarkerEvent;
    import com.transmote.flar.utils.geom.FLARPVGeomUtils;
    
    import flash.display.Sprite;
    [SWF(width="640", height="480", frameRate="24", backgroundColor="#FFFFFF")]
    import flash.events.Event;
    
	import flash.media.Sound;
    import flash.media.SoundChannel;
    import flash.net.URLRequest;
	import flash.net.*;
	
	import com.adobe.images.JPGEncoder;
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
	
	

	public class proyecto_figuras extends Sprite
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
		
		
        private var modelContainer:DisplayObject3D;
        private var modelContainer1:DisplayObject3D;
		private var modelContainer2:DisplayObject3D;
        private var modelContainer3:DisplayObject3D;
		

		
        private var markerId:int;
        var general:DAE ;
		var model:DAE ;
		var model1:DAE ;
		var model2:DAE ;
		var model3:DAE ;
		
		var sound:Sound;
		var sound1:Sound;
		var sound2:Sound;
		var sound3:Sound;
		var sc_sound:SoundChannel;
		var sc_sound1:SoundChannel;
		var sc_sound2:SoundChannel;
		var sc_sound3:SoundChannel;
		
		public function proyecto_figuras()
		{
			
	
            // pass the path to the FLARManager xml config file into the FLARManager constructor.
            // FLARManager creates and uses a FLARCameraSource by default.
            // the image from the first detected camera will be used for marker detection.
            //this.flarManager = new FLARManager("flar/flarConfig.xml");
			this.flarManager = new FLARManager("flarConfig_figura.xml");
            
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
            model.load("./assets/models/figura/cuadrado/cuadrado.DAE"); 
            model.rotationX = 90; 
            model.rotationY = 0; 
            model.rotationZ = 90; 
            model.scale = 1; 	 
			 
            // (this model has to be scaled and rotated to fit the marker; every model is different.) 
            model1 = new DAE(true, "model1", true); 
            model1.load("./assets/models/figura/triangulo/triangulo.DAE"); 
            model1.rotationX = 90; 
            model1.rotationY = 0;
            model1.rotationZ = 90; 
            model1.scale = 1; 
            
            // load the model. 
            // (this model has to be scaled and rotated to fit the marker; every model is different.) 
            model2 = new DAE(true, "model2", true); 
            model2.load("./assets/models/figura/rectangulo/RECTANGULO.DAE"); 
            model2.rotationX = 90; 
            model2.rotationY = 0;
            model2.rotationZ = 90; 
            model2.scale = 1; 
 
            model3 = new DAE(true, "model3", true); 
            model3.load("./assets/models/figura/circulo/CIRCULO.DAE"); 
            model3.rotationX = 90; 
            model3.rotationY = 0;
            model3.rotationZ = 90; 
            model3.scale = 1;
			
			
			
            
//              // create a container for the model, that will accept matrix transformations. 

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
            //------------------------------------------------------------------------- --------- 
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
							sound.load(new URLRequest("./assets/sonido/formas/Cuadrado.mp3"));
							sc_sound = sound.play(1,0);
							general = model;
			
					}
					
					if(evt.marker.patternId == 1)
					{
						trace("Pattern 01 Added");
						markerAdded(2);
						this.activeMarker1 = evt.marker;
						sc_sound1 = new SoundChannel;
				        sound1 = new Sound;
						sound1.load(new URLRequest("./assets/sonido/formas/Triangulo.mp3"));
						sc_sound1 = sound1.play(0,1);
						general = model1;
						
					}
					
					if(evt.marker.patternId == 2)
					{
						trace("Pattern 02 Added");
						markerAdded(3);
						this.activeMarker2 = evt.marker;
						sc_sound2 = new SoundChannel;
					    sound2 = new Sound;
						sound2.load(new URLRequest("./assets/sonido/formas/Rectangulo.mp3"));
						sc_sound2 = sound2.play(0,1);
						general = model2;
					}
					
					if(evt.marker.patternId == 3)
					{
						trace("Pattern 3 Added");
						markerAdded(4);
						this.activeMarker3 = evt.marker;
						sc_sound3 = new SoundChannel;
					    sound3 = new Sound;
						sound3.load(new URLRequest("./assets/sonido/formas/Circulo.mp3"));
						sc_sound3 = sound3.play(0,1);
						general = model3;
					}
					
					
					
				
					//this.activeMarker = evt.marker;
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
				
				
				
            } 
            
             private function onMarkerRemoved (evt:FLARMarkerEvent) :void { 
            trace("["+evt.marker.patternId+"] removed"); 
           
            if(evt.marker.patternId == 0)
            {
            trace("Pattern 0 Removed");
			 markerRemoved(1);
			 
			 sc_sound.stop();
            }
			if(evt.marker.patternId == 1)
            {
            trace("Pattern 1 Removed");
            markerRemoved(2);
			sc_sound1.stop();
			
            }
            if(evt.marker.patternId == 2)
            {
            trace("Pattern 2 Removed");
		
            markerRemoved(3);
			sc_sound2.stop();
			
            }
			if(evt.marker.patternId == 3)
			
			{
				trace("Pattern 3 Removed");
			  markerRemoved(4);
			sc_sound3.stop();
			}
			
            
            this.activeMarker = null;
            this.activeMarker1 = null; 
            this.activeMarker2 = null;
            this.activeMarker3 = null;
			
			
            } 
            
             private function onEnterFrame (evt:Event) :void { 
                 
                 // apply the FLARToolkit transformation matrix to the Cube.
                if (this.activeMarker) {
                this.modelContainer.transform =    FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker.transformMatrix);
                }
                
                if (this.activeMarker1) {
                this.modelContainer1.transform =    FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker1.transformMatrix);
                }
                
                if (this.activeMarker2) {
                this.modelContainer2.transform = FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker2.transformMatrix);
                }
                
                if (this.activeMarker3) {
                this.modelContainer3.transform = FLARPVGeomUtils.convertFLARMatrixToPVMatrix(this.activeMarker3.transformMatrix);
                }
				
				

           // apply the FLARToolkit transformation matrix to the Cube. 
        
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
                            break;
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
                            break;
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
					
					
                }
            }
			
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
