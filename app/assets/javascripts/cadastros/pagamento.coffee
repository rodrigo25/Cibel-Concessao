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
  
  Number::formatMoney = (c, d, t) ->
    n = this
    c = if isNaN(c = Math.abs(c)) then 2 else c
    d = if d == undefined then ',' else d
    t = if t == undefined then '.' else t
    s = if n < 0 then '-' else ''
    i = parseInt(n = Math.abs(+n or 0).toFixed(c)) + ''
    j = if (j = i.length) > 3 then j % 3 else 0
    s + (if j then i.substr(0, j) + t else '') + i.substr(j).replace(/(\d{3})(?=\d)/g, '$1' + t) + (if c then d + Math.abs(n - i).toFixed(c).slice(2) else '')

  calcular_parcelas = ->
    parcelas = $('#parcela_quantidade').val()
    if parcelas is ""
      $('#valor_parcela').val("")
    else
      tamanho = $('#valor_total').text().length
      if $('#valor_total').text().charAt(0) is "R"
        valor = parseFloat($('#valor_total').text().replace(".", "").replace(",",".").substring(3,tamanho))
      else
        valor = parseFloat($('#valor_total').text().replace(".", "").replace(",","."))
      resultado = valor/parcelas 
      $('#valor_parcela').val("R$ "+resultado.formatMoney(2))
  
  $('#rowclick').delegate ".checkbox_taxas", "change", ->
    if $(this).prop('checked')
      tamanho = $(this).parent().next().text().length
      valor = parseFloat($(this).parent().next().text().substring(3,tamanho).replace(".", "").replace(",","."))
      total_antigo = parseFloat($('#valor_total').text().replace(".", "").replace(",","."))
      total_novo = total_antigo + valor
      $('#valor_total').text(total_novo.formatMoney(2))
      calcular_parcelas() if $('#valor_parcela').val() isnt ""
    else
      tamanho = $(this).parent().next().text().length
      valor = parseFloat($(this).parent().next().text().substring(3,tamanho).replace(".", "").replace(",","."))
      total_antigo = parseFloat($('#valor_total').text().replace(".", "").replace(",","."))
      total_novo = total_antigo - valor
      $('#valor_total').text(total_novo.formatMoney(2))
      calcular_parcelas() if $('#valor_parcela').val() isnt ""
      
  $('#div_parcela').delegate "#parcela_quantidade", "change", ->
    calcular_parcelas()