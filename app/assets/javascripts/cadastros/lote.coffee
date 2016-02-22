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
    $.post("/ajax_renovacao_lote",
      {
        cemiterio_id: $('#lote_cemiterio_id').val()
        quadra: $('#lote_quadra').val()
        terreno: $('#lote_terreno').val()
        gleba: $('#lote_gleba').val()
        rua: $('#lote_rua').val()
        avenida: $('#lote_avenida').val()
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
    
  # $("#ajax_renovacao_lote_criar_novo_lote").click ->
  #   $('#lote_cemiterio_id').prop("disabled", false)
  #   $('#lote_quadra').prop("disabled", false)
  #   $('#lote_terreno').prop("disabled", false)
  #   $('#lote_gleba').prop("disabled", false)
  #   $('#lote_rua').prop("disabled", false)
  #   $('#lote_avenida').prop("disabled", false)
  #   $('#corpo_tabela').html("Criando novo lote")
  #   $('#lote_largura').val("").prop("disabled", false)
  #   $('#lote_comprimento').val("").prop("disabled", false)
  #   $('#lote_tipo_construcao').val("").prop("disabled", false)
  #   $('#lote_qtd_gaveta').val("").prop("disabled", false)
  #   $('#lote_qtd_ossario').val("").prop("disabled", false)
  
  $("#ajax_renovacao_lote_criar_novo_lote").click ->
    $('#modal_lote').modal("show")
    
  $('#criar_novo_lote_modal').click ->
    $.post("/novo_lote_modal",
      {
        cemiterio_id: $('#novo_lote_cemiterio_id').val()
        quadra: $('#novo_lote_quadra').val()
        terreno: $('#novo_lote_terreno').val()
        gleba: $('#novo_lote_gleba').val()
        rua: $('#novo_lote_rua').val()
        avenida: $('#novo_lote_avenida').val()
        largura: $('#novo_lote_largura').val()
        comprimento: $('#novo_lote_comprimento').val()
        tipo_construcao: $('#novo_lote_tipo_construcao').val()
        qtd_gaveta: $('#novo_lote_qtd_gaveta').val()
        qtd_ossario: $('#novo_lote_qtd_ossario').val()
      }
    )
    
  
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
