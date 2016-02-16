jQuery ->
  $("#ajax_renovacao_lote").click ->
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
    })