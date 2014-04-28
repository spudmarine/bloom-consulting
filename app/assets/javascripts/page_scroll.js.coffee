pageScrollNav = (link, target) ->
  $(link).click ->
    $('html, body').animate({scrollTop: $(target).offset().top - 60 }, 1000)

pageScroll = (link, target) ->
  $(link).click ->
    $('html, body').animate({scrollTop: $(target).offset().top}, 1000)


$(window).bind 'page:change', ->
  $('.page-jump').each ->
    link = $(this)
    target = $('.jump-anchor')

    pageScroll(link, target)

  $('.target-jump').each ->
    link = $(this)
    target = "#" + $(this).attr("data-target")

    pageScrollNav(link, target)