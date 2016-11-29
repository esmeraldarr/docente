jQuery(document).ready(function() {
    $('.select-drop').selectbox();
    $('.nav .dropdown').hover(function() {
    $(this).addClass('open');
}
, function() {
    $(this).removeClass('open');
}
);
    $('.cart-dropdown a').on("click", function() {
    $(".dropdown-menu").toggleClass('display-block');
    $(".cart-dropdown a i").toggleClass('fa-close').toggleClass("fa-shopping-basket");
    $(".badge").toggleClass('display-none');
}
);
    jQuery('.bannercontainerV1 .fullscreenbanner').revolution( {
    delay: 5000, startwidth:1170, startheight:800, fullWidth:"on", fullScreen:"off", hideCaptionAtLimit:"", dottedOverlay:"twoxtwo", navigationStyle:"preview4", fullScreenOffsetContainer:"", hideTimerBar:"on"}
);
    jQuery('.bannercontainerV3 .fullscreenbanner').revolution( {
    delay: 5000, startwidth:1170, startheight:500, fullWidth:"on", fullScreen:"on", hideCaptionAtLimit:"", dottedOverlay:"twoxtwo", navigationStyle:"preview4", fullScreenOffsetContainer:"", hideTimerBar:"on", }
);
    jQuery('.bannercontainerV2 .fullscreenbanner').revolution( {
    delay: 5000, startwidth:1170, startheight:660, fullWidth:"on", fullScreen:"off", hideCaptionAtLimit:"", dottedOverlay:"none", navigationStyle:"preview4", fullScreenOffsetContainer:"", hideTimerBar:"on"}
);
    var owl=$('.owl-carousel.teamSlider');
    owl.owlCarousel( {
    loop: true, margin:28, autoplay:false, autoplayTimeout:2000, autoplayHoverPause:true, nav:true, moveSlides:4, dots:false, responsive: {
    320:  {
    items: 1;
}
, 768: {
    items: 3;
}
, 992: {
    items: 4;
}
}});
    var owl=$('.owl-carousel.commentSlider');
    owl.owlCarousel( {
    loop: true, margin:28, autoplay:false, autoplayTimeout:3000, autoplayHoverPause:true, nav:true, moveSlides:1, dots:false, responsive: {
    320:  {
    items: 1;
}
, 768: {
    items: 1;
}
, 992: {
    items: 1;
}
}});
    var owl=$('.owl-carousel.partnersLogoSlider');
    owl.owlCarousel( {
    loop: true, margin:28, autoplay:true, autoplayTimeout:2000, autoplayHoverPause:true, nav:true, dots:false, responsive: {
    320:  {
    slideBy: 1, items:1;
}
, 768: {
    slideBy: 1, items:3;
}
, 992: {
    slideBy: 1, items:5;
}
}});
    $(document).ready(function($) {
    $('.counter').counterUp( {
    delay: 10, time:2000;
}
);
}
);
    $(window).scroll(function() {
    if($(this).scrollTop()>5)
 {
    $('#menuBar').addClass("menu-sm");
    $('.navbar-default').addClass("navbar-fixed-top");
    $(".top-info-bar").addClass("height0");
    $(".bannercontainer ,  .pageTitleSection").addClass("padding-top");
}

else {
    $('#menuBar').removeClass("menu-sm");
    $('.navbar-default').removeClass("navbar-fixed-top");
    $(".top-info-bar").removeClass("height0");
    $(".bannercontainer ,  .pageTitleSection").removeClass("padding-top");
}
}
);
    $(document).ready(function() {
    $(window).scroll(function() {
    if($(this).scrollTop()>100) {
    $('#backToTop').css("opacity", 1);
}
else {
    $('#backToTop').css("opacity", 0);
}
}
);
}
);
    $(document).ready(function() {
    $('.scrolling  a[href*="#"]').on('click', function(e) {
    e.preventDefault();
    e.stopPropagation();
    var target=$(this).attr('href');
    $(target).velocity('scroll',  {
    duration: 800, offset:-150, easing:'easeOutExpo', mobileHA:false;
}
);
}
);
}
);
    var minimum=20;
    var maximum=300;
    $("#price-range").slider( {
    range: true, min:minimum, max:maximum, values:[minimum, maximum], slide:function(event, ui) {
    $("#price-amount-1").val("$"+ ui.values[0]);
    $("#price-amount-2").val("$"+ ui.values[1]);
}
}
);
    $("#price-amount-1").val("$"+ $("#price-range").slider("values", 0));
    $("#price-amount-2").val("$"+ $("#price-range").slider("values", 1));
    var allIcons=$("#faqAccordion .panel-heading i.fa");
    $('#faqAccordion .panel-heading').click(function() {
    allIcons.removeClass('fa-chevron-down').addClass('fa-chevron-up');
    $(this).find('i.fa').removeClass('fa-chevron-up').addClass('fa-chevron-down');
}
);
    var allIconsOne=$("#accordionOne .panel-heading i.fa");
    $('#accordionOne .panel-heading').click(function() {
    allIconsOne.removeClass('fa-chevron-down').addClass('fa-chevron-up');
    $(this).find('i.fa').removeClass('fa-chevron-up').addClass('fa-chevron-down');
}
);
    var allIconsTwo=$("#accordionTwo .panel-heading i.fa");
    $('#accordionTwo .panel-heading').click(function() {
    allIconsTwo.removeClass('fa-chevron-down').addClass('fa-chevron-up');
    $(this).find('i.fa').removeClass('fa-chevron-up').addClass('fa-chevron-down');
}
);
    var allIconsThree=$("#togglesOne .panel-heading i.fa");
    $('#togglesOne .panel-heading').click(function() {
    allIconsThree.removeClass('fa-chevron-down').addClass('fa-chevron-up');
    $(this).find('i.fa').removeClass('fa-chevron-up').addClass('fa-chevron-down');
}
);
    var allIconsFour=$("#togglesTwo .panel-heading i.fa");
    $('#togglesTwo .panel-heading').click(function() {
    allIconsFour.removeClass('fa-chevron-down').addClass('fa-chevron-up');
    $(this).find('i.fa').removeClass('fa-chevron-up').addClass('fa-chevron-down');
}
);
    var galleryThumb=$('.product-gallery-thumblist a'), galleryPreview=$('.product-gallery-preview > li');
    galleryThumb.on('click', function(e) {
    var target=$(this).attr('href');
    galleryThumb.parent().removeClass('active');
    $(this).parent().addClass('active');
    galleryPreview.removeClass('current');
    $(target).addClass('current');
    e.preventDefault();
}
);
    $(".incr-btn").on("click", function(e) {
    var $button=$(this);
    var oldValue=$button.parent().find('.quantity').val();
    $button.parent().find('.incr-btn[data-action="decrease"]').removeClass('inactive');
    if($button.data('action')=="increase") {
    var newVal=parseFloat(oldValue)+ 1;
}
else {
    if(oldValue>1) {
    var newVal=parseFloat(oldValue)- 1;
}
else {
    newVal=1;
    $button.addClass('inactive');
}
}
$button.parent().find('.quantity').val(newVal);
    e.preventDefault();
}
);
}
);
    