jQuery ->
  $('#quotesort').sortable
    axis: 'y'
    update: ->
      $.post($(this).data('update'), $(this).sortable('serialize'))