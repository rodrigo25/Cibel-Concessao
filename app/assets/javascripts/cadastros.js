$(document).ready(function() {
  	$('#rootwizard').bootstrapWizard({onTabClick: function(tab, navigation, index) {
		// alert('on tab click disabled');
		return false;
	}});
});