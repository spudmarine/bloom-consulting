navShow = (square, text) ->

  $(square).mouseenter(->
    $(text).stop().animate
      width: "263px"
    , 200
    $(text).addClass('p-y-5');
    return
  ).mouseleave ->
    $(text).stop().animate
      width: "0px"
    , 200
    $(text).removeClass('p-y-5');
    return
  $(text).mouseenter(->
    $(text).stop().animate
      width: "263px"
    , 200
    $(text).addClass('p-y-5');
    return
  ).mouseleave ->
    $(text).stop().animate
      width: "0px"
    , 200
    $(text).removeClass('p-y-5');
    return

$ ->

  $('.bloom-square').each ->

    square = $('.bloom-square')
    text = $('.bloom-text')

    navShow(square, text)
