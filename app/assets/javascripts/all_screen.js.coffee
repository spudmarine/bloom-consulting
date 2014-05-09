resizeStrata = ->
  allScreen('.all-screen')

allScreen = (element) ->
  height = $(window).height()
  $(element).each ->
    el = $(this)
    el.height((height) + "px")

$(window).bind 'page:change', ->
  resizeStrata()
  $(window).resize(resizeStrata)
