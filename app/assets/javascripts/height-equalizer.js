function a(){
  if($(window).width()>641){
    var a = $("div[data-equalizer-watch]");
    var b = $(a).outerHeight();
    var c = $(".bottom-line").height();
    $(a).css("height",b + c);
    var d = $(a).innerWidth() - $(a).width();
    $(".bottom-line").css("padding", "20px");
  }else{
    $(".bottom-line").css("padding",auto);
  };
};
$(document).on('after-height-change', a);
$(window).resize(a);