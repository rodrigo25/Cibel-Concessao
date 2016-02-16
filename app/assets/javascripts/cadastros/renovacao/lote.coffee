jQuery ->
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
    
  $("#ajax_renovacao_lote_criar_novo_lote").click ->
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
    $('#lote_largura').val("").prop("disabled", false)
    $('#lote_comprimento').val("").prop("disabled", false)
    $('#lote_tipo_construcao').val("").prop("disabled", false)
    $('#lote_qtd_gaveta').val("").prop("disabled", false)
    $('#lote_qtd_ossario').val("").prop("disabled", false)
    