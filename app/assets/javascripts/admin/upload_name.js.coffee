getName = (button, print) ->

  $(button).change ->

    name = "New File: " + $(this).val().replace(/^.*[\\\/]/, '')
    $(print).text(name)

addEventListeners = ->

  $('.upload').each ->

    button = $(this)
    print = $(this).data("print")

    getName(button, print)

$ ->
  addEventListeners()

