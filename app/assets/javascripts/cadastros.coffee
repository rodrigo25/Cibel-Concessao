jQuery ->
  $('#rootwizard_concessao_renovacao').bootstrapWizard
    onTabShow: (tab, navigation, index) ->
      if index == 4
      	calcular_pagamento()
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