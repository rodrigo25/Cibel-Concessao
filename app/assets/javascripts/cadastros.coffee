jQuery ->
  $('#rootwizard_concessao_renovacao').bootstrapWizard
    onTabShow: (tab, navigation, index) ->
      switch index
      	when 0 then $('#processo_geral_numero').focus()
      	when 1 then	$('#requerente_CPF').focus()
      	when 2 then $('#lote_cemiterio_id').focus() and $('#concessionario_requerente_CPF').focus()
      	when 3 then $('#lote_cemiterio_id').focus()
      	else
    onTabClick: (tab, navigation, index) ->
      false