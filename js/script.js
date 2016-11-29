$(function() { 

	$('#plus-ex').click(function(){  
		if($(this).hasClass('plus')){
			$(this).removeClass('plus')
			$(this).addClass('ex');
			$('#moment-buttons li').addClass('out');
		} else {
			$(this).removeClass('ex');
			$(this).addClass('plus');
			$('#moment-buttons li').removeClass('out');
		}
		return false;
	});

	$('#plus-exs').click(function(){  
		if($(this).hasClass('pluss')){
			$(this).removeClass('pluss')
			$(this).addClass('exs');
			$('#moment-buttonss li').addClass('outs');
		} else {
			$(this).removeClass('exs');
			$(this).addClass('pluss');
			$('#moment-buttonss li').removeClass('outs');
		}
		return false;
	});
});


jQuery( document ).ready(function( $ ) {
    var audio = $("#reproductor")[0];
    $("div.boton-play").mouseenter(function() {
        audio.play();
    });
    $("div.boton-play").mouseleave(function() {
        audio.pause();
    });
});
