$(document).ready(function() {
	$('#rootwizard_concessao_renovacao').bootstrapWizard(
		{
			onTabShow: function(tab, navigation, index) {
				if (index === 4){
					calcular_pagamento();
				}
			},
			onTabClick: function(tab, navigation, index) {
				return false;
			}
		}
	);
});