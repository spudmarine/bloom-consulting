backToTop = (link) ->

  windowScroll = $(window).scrollTop()

  $(window).bind 'scroll', ->

    if $(window).scrollTop() >= 800
      link.fadeIn()
    else
      link.fadeOut()

addEventListeners = ->
  $('.back-to-top').each ->
    link = $(this)

    backToTop(link)

  $('.back-to-top').click (e) ->
    target = $(this).parent().attr('href')

    e.preventDefault()
    $.scrollTo target, 1000
    return

$(window).bind 'page:change', ->
  addEventListeners()
