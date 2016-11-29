<!DOCTYPE html>
<html lang="en">
<head>

<!-- SITE TITTLE -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Docente - 2.0</title>

<!-- PLUGINS CSS STYLE -->
<link href="css/jquery-ui.css" rel="stylesheet">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
 <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">

<link href="css/freelancer.min.css" rel="stylesheet">

<!-- CUSTOM CSS -->
<link href="css/style.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<!-- Icons -->
<link rel="shortcut icon" href="img/docente2.png">
<script src="js/jquery.min.js"></script>
</head>

<body>

  <!-- HEADER -->
  <header>
    <!-- COLOR BAR -->
    <div class="container-fluid color-bar top-fixed clearfix">
      <div class="row">
        <div class="col-sm-1 col-xs-2 bg-color-1">fix bar</div>
        <div class="col-sm-1 col-xs-2 bg-color-2">fix bar</div>
        <div class="col-sm-1 col-xs-2 bg-color-3">fix bar</div>
        <div class="col-sm-1 col-xs-2 bg-color-4">fix bar</div>
        <div class="col-sm-1 col-xs-2 bg-color-5">fix bar</div>
        <div class="col-sm-1 col-xs-2 bg-color-6">fix bar</div>
        <div class="col-sm-1 bg-color-1 hidden-xs">fix bar</div>
        <div class="col-sm-1 bg-color-2 hidden-xs">fix bar</div>
        <div class="col-sm-1 bg-color-3 hidden-xs">fix bar</div>
        <div class="col-sm-1 bg-color-4 hidden-xs">fix bar</div>
        <div class="col-sm-1 bg-color-5 hidden-xs">fix bar</div>
        <div class="col-sm-1 bg-color-6 hidden-xs">fix bar</div>
      </div>
    </div>
 

    </header>
    
    <!-- Navigation -->
        <nav  class="navbar navbar-default navbar-custom volver">
            <div class="container">
            
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                             <a class="navbar-brand" href="index.html"><img src="img/flecha.png"></a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>
<div class="levels level-heros  has-hint">
      <div class="col-xs-12 col-sm-12">
       <a><h1><center>Figuras Geometrícas</center></h1></a>
<div class="col-sm-6" id="slider-thumbs">
                <!-- Bottom switcher of slider -->
                <ul class="hide-bullets">
                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-0">
                            <img src="img/GEOMETRIA/CIRCULO.jpg"><h5><center>circulo</center></h5>
                        </a>
                    </li>

                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-1"><img src="img/GEOMETRIA/CUADRADO.jpg"><h5><center>cuadrado</center></h5></a>
                    </li>

                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-2"><img src="img/GEOMETRIA/RECTANGULO.jpg"><h5><center>rectángulo</center></h5></a>
                    </li>

                    <li class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-3"><img src="img/GEOMETRIA/TRIANGULO.jpg"><h5><center>triangulo</center></h5></a>
                    </li>

                </ul>
            </div>
             <div class="col-sm-6">
                <div class="col-xs-12" id="slider">
                        <div class="col-sm-11" id="carousel-bounding-box">
                            <div class="carousel slide" id="myCarousel">
                                <div class="carousel-inner">
                                    <div class="active item" data-slide-number="0">
                                        
<audio id="multiaudio1" src="audiofg/Circulo.mp3" preload="auto"></audio>
                                     <a href="javascript:play_multi_sound('multiaudio1');"><img src="img/GEOMETRIA/CIRCULO.jpg"><h3><center>circulo</center></h3><div class="sobres"><img src="img/play_big.png"> </div></a></div>
                                

                                    <div class="item" data-slide-number="1">
                                        
<audio id="multiaudio2" src="audiofg/Cuadrado.mp3" preload="auto"></audio>
                                     <a href="javascript:play_multi_sound('multiaudio2');"><img src="img/GEOMETRIA/CUADRADO.jpg"><h3><center>cuadrado</center></h3><div class="sobres"><img src="img/play_big.png"> </div></a></div>
                        

                                    <div class="item" data-slide-number="2">
                                        
<audio id="multiaudio3" src="audiofg/Rectangulo.mp3" preload="auto"></audio>
                                     <a href="javascript:play_multi_sound('multiaudio3');"><img src="img/GEOMETRIA/RECTANGULO.jpg"><h3><center>rectángulo</center></h3><div class="sobres"><img src="img/play_big.png"> </div></a></div>
                                  

                                    <div class="item" data-slide-number="3">
                                        
<audio id="multiaudio4" src="audiofg/Triangulo.mp3" preload="auto"></audio>
                                     <a href="javascript:play_multi_sound('multiaudio4');"><img src="img/GEOMETRIA/TRIANGULO.jpg"><h3><center>triangulo</center></h3><div class="sobres"><img src="img/play_big.png"> </div></a></div>


 <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left"></span>
                                </a>
                                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right"></span>
                                </a>

                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
 
                                                                    <script type="text/javascript">
    var channel_max = 30;                                      
    audiochannels = new Array();
    for (a=0;a<channel_max;a++) {                                  
        audiochannels[a] = new Array();
        audiochannels[a]['channel'] = new Audio();                      
        audiochannels[a]['finished'] = -1;                          
    }
    function play_multi_sound(s) {
        for (a=0;a<audiochannels.length;a++) {
            thistime = new Date();
            if (audiochannels[a]['finished'] < thistime.getTime()) {            
                audiochannels[a]['finished'] = thistime.getTime() + document.getElementById(s).duration*1000;
                audiochannels[a]['channel'].src = document.getElementById(s).src;
                audiochannels[a]['channel'].load();
                audiochannels[a]['channel'].play();
                break;
            }
        }
    }
</script>
<!-- jQuery -->
<script src="vendor/jquery/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>


<!-- Contact Form JavaScript -->
<script src="js/jqBootstrapValidation.js"></script>
<script src="js/contact_me.js"></script>

<!-- Theme JavaScript -->
<script src="js/freelancer.min.js"></script>

</body>

</html>