jQuery ->
  $('#rowclick tr').click (event) ->
    if (event.target.type != 'checkbox')
      $(this).find(':checkbox').click()