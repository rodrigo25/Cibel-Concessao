jQuery ->
  $('#rowclick tr').click ->
    $(this).find(':checkbox').click()