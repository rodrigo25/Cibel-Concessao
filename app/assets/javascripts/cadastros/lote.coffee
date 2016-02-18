jQuery ->
  $('#lote_largura').prop("disabled", true)
  $('#lote_comprimento').prop("disabled", true)
  $('#lote_tipo_construcao').prop("disabled", true)
  $('#lote_qtd_gaveta').prop("disabled", true)
  $('#lote_qtd_ossario').prop("disabled", true)
  
  $("#ajax_renovacao_lote_buscar").click ->
    $('#lote_largura').val("")
    $('#lote_comprimento').val("")
    $('#lote_tipo_construcao').val("")
    $('#lote_qtd_gaveta').val("")
    $('#lote_qtd_ossario').val("")
    val_cemiterio_id = $('#lote_cemiterio_id').val()
    val_quadra = $('#lote_quadra').val()
    val_terreno = $('#lote_terreno').val()
    val_gleba = $('#lote_gleba').val()
    val_rua = $('#lote_rua').val()
    val_avenida = $('#lote_avenida').val()
    $.post("/ajax_renovacao_lote",
      {
        cemiterio_id: val_cemiterio_id
        quadra: val_quadra
        terreno: val_terreno
        gleba: val_gleba
        rua: val_rua
        avenida: val_avenida
      }
    )
  
  $('#corpo_tabela').delegate "tr", "click", ->
    $('#corpo_tabela').find('tr').removeClass("highlight")
    $(this).addClass("highlight")
    $('#lote_largura').val($(this).attr("data-largura")).prop("disabled", true)
    $('#lote_comprimento').val($(this).attr("data-comprimento")).prop("disabled", true)
    $('#lote_tipo_construcao').val($(this).attr("data-tipo_construcao")).prop("disabled", true)
    $('#lote_qtd_gaveta').val($(this).attr("data-qtd_gaveta")).prop("disabled", true)
    $('#lote_qtd_ossario').val($(this).attr("data-qtd_ossario")).prop("disabled", true)
    $('#lote_cemiterio_id').prop("disabled", true)
    $('#lote_quadra').val($(this).find('td.quadra').text()).prop("disabled", true)
    $('#lote_terreno').val($(this).find('td.terreno').text()).prop("disabled", true)
    $('#lote_gleba').val($(this).find('td.gleba').text()).prop("disabled", true)
    $('#lote_rua').val($(this).find('td.rua').text()).prop("disabled", true)
    $('#lote_avenida').val($(this).find('td.avenida').text()).prop("disabled", true)
    
  $('#lote_cemiterio_id').change ->
    $('#corpo_tabela').html("")
    
  $("#ajax_renovacao_lote_criar_novo_lote").click ->
    $('#lote_cemiterio_id').prop("disabled", false)
    $('#lote_quadra').prop("disabled", false)
    $('#lote_terreno').prop("disabled", false)
    $('#lote_gleba').prop("disabled", false)
    $('#lote_rua').prop("disabled", false)
    $('#lote_avenida').prop("disabled", false)
    $('#corpo_tabela').html("Criando novo lote")
    $('#lote_largura').val("").prop("disabled", false)
    $('#lote_comprimento').val("").prop("disabled", false)
    $('#lote_tipo_construcao').val("").prop("disabled", false)
    $('#lote_qtd_gaveta').val("").prop("disabled", false)
    $('#lote_qtd_ossario').val("").prop("disabled", false)
  
  $('#ajax_renovacao_lote_limpar').click ->
    $('#lote_cemiterio_id').val("").prop("disabled", false)
    $('#lote_quadra').val("").prop("disabled", false)
    $('#lote_terreno').val("").prop("disabled", false)
    $('#lote_gleba').val("").prop("disabled", false)
    $('#lote_rua').val("").prop("disabled", false)
    $('#lote_avenida').val("").prop("disabled", false)
    $('#corpo_tabela').html("")
    $('#lote_largura').val("").prop("disabled", true)
    $('#lote_comprimento').val("").prop("disabled", true)
    $('#lote_tipo_construcao').val("").prop("disabled", true)
    $('#lote_qtd_gaveta').val("").prop("disabled", true)
    $('#lote_qtd_ossario').val("").prop("disabled", true)
  
  $('#concessionario_checkbox').change ->
    # $(this).prop('checked')
    # quando eu do check, ele retorna true
    if $(this).prop('checked')
      $('#concessionario_municipe_nome').val($('#municipe_nome').val()).prop("disabled", true) if $('#municipe_nome').val().trim().length != 0
      $('#concessionario_municipe_RG').val($('#municipe_RG').val()).prop("disabled", true) if $('#municipe_RG').val().trim().length != 0
      $('#concessionario_requerente_CPF').val($('#requerente_CPF').val()).prop("disabled", true) if $('#requerente_CPF').val().trim().length != 0
      $('#concessionario_requerente_dt_nascimento').val($('#requerente_dt_nascimento').val()).prop("disabled", true) if $('#requerente_dt_nascimento').val().trim().length != 0
      $('#concessionario_requerente_estado_civil').val($('#requerente_estado_civil').val()).prop("disabled", true) if $('#requerente_estado_civil').val().trim().length != 0
      $('#concessionario_requerente_nacionalidade').val($('#requerente_nacionalidade').val()).prop("disabled", true) if $('#requerente_nacionalidade').val().trim().length != 0
      $('#concessionario_requerente_profissao').val($('#requerente_profissao').val()).prop("disabled", true) if $('#requerente_profissao').val().trim().length != 0
      $('#concessionario_requerente_email').val($('#requerente_email').val()).prop("disabled", true) if $('#requerente_email').val().trim().length != 0
      $('#concessionario_municipe_telefone').val($('#municipe_telefone').val()).prop("disabled", true) if $('#municipe_telefone').val().trim().length != 0
      $('#concessionario_requerente_celular').val($('#requerente_celular').val()).prop("disabled", true) if $('#requerente_celular').val().trim().length != 0
      $('#concessionario_requerente_CEP').val($('#requerente_CEP').val()).prop("disabled", true) if $('#requerente_CEP').val().trim().length != 0
      $('#concessionario_municipe_rua').val($('#municipe_rua').val()).prop("disabled", true) if $('#municipe_rua').val().trim().length != 0
      $('#concessionario_municipe_numero').val($('#municipe_numero').val()).prop("disabled", true) if $('#municipe_numero').val().trim().length != 0
      $('#concessionario_municipe_complemento').val($('#municipe_complemento').val()).prop("disabled", true) if $('#municipe_complemento').val().trim().length != 0
      $('#concessionario_requerente_bairro').val($('#requerente_bairro').val()).prop("disabled", true) if $('#requerente_bairro').val().trim().length != 0
      $('#concessionario_requerente_cidade').val($('#requerente_cidade').val()).prop("disabled", true) if $('#requerente_cidade').val().trim().length != 0
      $('#concessionario_requerente_estado').val($('#requerente_estado').val()).prop("disabled", true) if $('#requerente_estado').val().trim().length != 0
    else
      $('#concessionario_municipe_nome').val("").prop("disabled", false)
      $('#concessionario_municipe_RG').val("").prop("disabled", false)
      $('#concessionario_requerente_CPF').val("").prop("disabled", false)
      $('#concessionario_requerente_dt_nascimento').val("").prop("disabled", false)
      $('#concessionario_requerente_estado_civil').val("").prop("disabled", false)
      $('#concessionario_requerente_nacionalidade').val("").prop("disabled", false)
      $('#concessionario_requerente_profissao').val("").prop("disabled", false)
      $('#concessionario_requerente_email').val("").prop("disabled", false)
      $('#concessionario_municipe_telefone').val("").prop("disabled", false)
      $('#concessionario_requerente_celular').val("").prop("disabled", false)
      $('#concessionario_requerente_CEP').val("").prop("disabled", false)
      $('#concessionario_municipe_rua').val("").prop("disabled", false)
      $('#concessionario_municipe_numero').val("").prop("disabled", false)
      $('#concessionario_municipe_complemento').val("").prop("disabled", false)
      $('#concessionario_requerente_bairro').val("").prop("disabled", false)
      $('#concessionario_requerente_cidade').val("").prop("disabled", false)
      $('#concessionario_requerente_estado').val("").prop("disabled", false)
    
  checkbox_change = (selector) ->
    $('#'+selector).change ->
      $('#concessionario_checkbox').click() if $('#concessionario_checkbox').prop("checked", true)
      
  checkbox_change("municipe_nome")
  checkbox_change("municipe_RG")
  checkbox_change("requerente_CPF")
  checkbox_change("requerente_dt_nascimento")
  checkbox_change("requerente_estado_civil")
  checkbox_change("requerente_nacionalidade")
  checkbox_change("requerente_profissao")
  checkbox_change("requerente_email")
  checkbox_change("municipe_telefone")
  checkbox_change("requerente_celular")
  checkbox_change("requerente_CEP")
  checkbox_change("municipe_rua")
  checkbox_change("municipe_numero")
  checkbox_change("municipe_complemento")
  checkbox_change("requerente_bairro")
  checkbox_change("requerente_cidade")
  checkbox_change("requerente_estado")