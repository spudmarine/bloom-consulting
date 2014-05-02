toggleShow = (link) ->

  wrapper = $(link).prev()
  linkText = $(link).find(".js-link-text")
  linkIcon = $(link).find(".js-link-icon")
  closedText = "Read More"
  closedIcon = "f"
  openText = "Hide Details"
  openIcon = "i"

  if $(wrapper).hasClass("bio-hide")
    $(linkText).text(closedText)
    $(linkIcon).attr("data-icon", closedIcon)
  else
    $(linkText).text(openText)
    $(linkIcon).attr("data-icon", openIcon)

  $(link).click ->

    if $(wrapper).hasClass("bio-hide")
      $(wrapper).slideDown("bio-hide")
      $(wrapper).removeClass("bio-hide")
      $(linkText).text(openText)
      $(linkIcon).attr("data-icon", openIcon)
    else
      $(wrapper).slideUp("bio-hide")
      $(wrapper).addClass("bio-hide")
      $(linkText).text(closedText)
      $(linkIcon).attr("data-icon", closedIcon)

$(window).bind 'page:change', ->
  $(".bio-toggle").each ->
    link = $(this)

    toggleShow(link)



