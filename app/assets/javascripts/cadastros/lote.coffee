jQuery ->
  $('#lote_largura').prop("disabled", true)
  $('#lote_comprimento').prop("disabled", true)
  $('#lote_tipo_construcao').prop("disabled", true)
  $('#lote_qtd_gaveta').prop("disabled", true)
  $('#lote_qtd_ossario').prop("disabled", true)
  $('#concessao_renovacao_periodo_concessao').prop("disabled", true)
  
  $("#ajax_renovacao_lote_buscar").click ->
    $('#lote_largura').val("")
    $('#lote_comprimento').val("")
    $('#lote_tipo_construcao').val("")
    $('#lote_qtd_gaveta').val("")
    $('#lote_qtd_ossario').val("")
    $.post("/ajax_lote",
      {
        cemiterio_id: $('#lote_cemiterio_id').val()
        quadra: $('#lote_quadra').val()
        terreno: $('#lote_terreno').val()
        gleba: $('#lote_gleba').val()
        rua: $('#lote_rua').val()
        avenida: $('#lote_avenida').val()
      }
    )
    $.post("/ajax_tipo_concessao_cemiterio",
      {
        cemiterio_id: $('#lote_cemiterio_id').val()
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
    $('#lote_cemiterio_id').val($('#novo_lote_cemiterio_id').val()).prop("disabled", true)
    $('#lote_quadra').val($('#novo_lote_quadra').val()).prop("disabled", true)
    $('#lote_terreno').val($('#novo_lote_terreno').val()).prop("disabled", true)
    $('#lote_gleba').val($('#novo_lote_gleba').val()).prop("disabled", true)
    $('#lote_rua').val($('#novo_lote_rua').val()).prop("disabled", true)
    $('#lote_avenida').val($('#novo_lote_avenida').val()).prop("disabled", true)
    $('#corpo_tabela').html("")
    #$('#corpo_tabela').append("<tr data-cemiterio=<%= lote.cemiterio.nome %> data-largura=<%= lote.largura %> data-comprimento=<%= lote.comprimento %> data-tipo_construcao=<%= lote.tipo_construcao %> data-qtd_gaveta=<%= lote.qtd_gaveta %> data-qtd_ossario=<%= lote.qtd_ossario %> > <td class='quadra'><%= lote.quadra %></td> <td class='terreno'><%= lote.terreno %></td> <td class='gleba'><%= lote.gleba %></td> <td class='rua'><%= lote.rua %></td> <td class='avenida'><%= lote.avenida %></td> <td class='concessionario'><%= conc %></td> <td class='estado'><%= lote.estado %></td> </tr>");
    $('#lote_largura').val($('#novo_lote_largura').val()).prop("disabled", true)
    $('#lote_comprimento').val($('#novo_lote_comprimento').val()).prop("disabled", true)
    $('#lote_tipo_construcao').val($('#novo_lote_tipo_construcao').val()).prop("disabled", true)
    if $('#novo_lote_qtd_gaveta').val().trim().length != 0
      $('#lote_qtd_gaveta').val($('#novo_lote_qtd_gaveta').val()).prop("disabled", true) 
    else
      $('#lote_qtd_gaveta').val("0").prop("disabled", true)
    if $('#novo_lote_qtd_ossario').val().trim().length != 0
      $('#lote_qtd_ossario').val($('#novo_lote_qtd_ossario').val()).prop("disabled", true)
    else
      $('#lote_qtd_ossario').val("0").prop("disabled", true)
    
    
  
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
