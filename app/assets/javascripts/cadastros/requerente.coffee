jQuery ->
  
  $("#ajax_requerente_buscar").click ->
    $.post("/ajax_buscar_requerente_cpf",
      {
        requerente_CPF: $('#requerente_CPF').val()
      }
    )
    
  
  $("#ajax_requerente_limpar").click ->
    $('#requerente_CPF').val("").prop("disabled", false).focus();
    $('#municipe_nome').val("").prop("disabled", false);
    $('#municipe_RG').val("").prop("disabled", false);
    $('#requerente_dt_nascimento').val("").prop("disabled", false);
    $('#requerente_estado_civil').val("").prop("disabled", false);
    $('#requerente_nacionalidade').val("").prop("disabled", false);
    $('#requerente_profissao').val("").prop("disabled", false);
    $('#requerente_email').val("").prop("disabled", false);
    $('#municipe_telefone').val("").prop("disabled", false);
    $('#requerente_celular').val("").prop("disabled", false);
    $('#requerente_CEP').val("").prop("disabled", false);
    $('#municipe_rua').val("").prop("disabled", false);
    $('#municipe_numero').val("").prop("disabled", false);
    $('#municipe_complemento').val("").prop("disabled", false);
    $('#requerente_bairro').val("").prop("disabled", false);
    $('#requerente_cidade').val("").prop("disabled", false);
    $('#requerente_estado').val("").prop("disabled", false);