jQuery ->
  $('#rowclick tr').click (event) ->
    if (event.target.type != 'checkbox')
      $(this).find(':checkbox').click()

  $('#emitente_checkbox').change ->
    # $(this).prop('checked')
    # quando eu do check, ele retorna true
    if $(this).prop('checked')
      $('#emitente_municipe_nome').val($('#municipe_nome').val()).prop("disabled", true)
      $('#emitente_municipe_rua').val($('#municipe_rua').val()).prop("disabled", true)
      $('#emitente_municipe_numero').val($('#municipe_numero').val()).prop("disabled", true)
      $('#emitente_municipe_complemento').val($('#municipe_complemento').val()).prop("disabled", true)
      $('#emitente_municipe_RG').val($('#municipe_RG').val()).prop("disabled", true)
      $('#emitente_municipe_telefone').val($('#municipe_telefone').val()).prop("disabled", true)

    else
      $('#emitente_municipe_nome').val("").prop("disabled", false)
      $('#emitente_municipe_rua').val("").prop("disabled", false)
      $('#emitente_municipe_numero').val("").prop("disabled", false)
      $('#emitente_municipe_complemento').val("").prop("disabled", false)
      $('#emitente_municipe_RG').val("").prop("disabled", false)
      $('#emitente_municipe_telefone').val("").prop("disabled", false)

  checkbox_change = (selector) ->
    $('#'+selector).change ->
      $('#emitente_checkbox').click() if $('#emitente_checkbox').prop("checked", true)

  checkbox_change("municipe_nome")
  checkbox_change("municipe_rua")
  checkbox_change("municipe_numero")
  checkbox_change("municipe_complemento")
  checkbox_change("municipe_RG")
  checkbox_change("municipe_telefone")
  
  
  $('#rowclick').delegate ".checkbox_taxas", "change", ->
    if $(this).prop('checked')
      alert "oi"
      # soma
    else
      alert "tchau"
      # subtrai