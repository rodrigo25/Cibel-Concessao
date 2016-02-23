jQuery ->
  $('#rootwizard_concessao_renovacao').bootstrapWizard
    onTabShow: (tab, navigation, index) ->
      switch index
      	when 0 then $('#processo_geral_numero').focus()
      	when 1 then	$('#requerente_CPF').focus()
      	when 2 then $('#lote_cemiterio_id').focus() and $('#concessionario_requerente_CPF').focus()
      	when 3 then $('#lote_cemiterio_id').focus()
      	when 4 then calcular_pagamento()
      	else
    onTabClick: (tab, navigation, index) ->
      false

	calcular_pagamento = ->
		$.post("/ajax_pagamento",
	  	{
	    	cemiterio_id: $('#lote_cemiterio_id').val()
	    	qtd_gaveta: $('#lote_qtd_gaveta').val()
	    	qtd_ossario: $('#lote_qtd_ossario').val()
	    	largura: $('#lote_largura').val()
	    	comprimento: $('#lote_comprimento').val()
	  	}
	  )
