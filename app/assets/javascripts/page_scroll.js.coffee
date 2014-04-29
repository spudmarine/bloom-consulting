pageScroll = (link, target, give = 60) ->
  $(link).click ->
    $('html, body').animate({scrollTop: $(target).offset().top - give }, 1000)


$(window).bind 'page:change', ->
  $('.page-jump').each ->
    link = $(this)
    target = $('.jump-anchor')

    pageScroll(link, target, 0)

  $('.target-jump').each ->
    link = $(this)
    target = "#" + $(this).attr("data-target")

    pageScroll(link, target)

  $('.anchor-link').each ->
    link = $(this)
    target = $(this).attr("href")

    pageScroll(link, target)

