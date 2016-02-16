$(document).ready(function() {
  	$('#rootwizard').bootstrapWizard({onTabClick: function(tab, navigation, index) {
		// alert('on tab click disabled');
		return false;
	}});
});

$(document).ready(function() {
  $('#rowclick tr').click(function(event) {
    if (event.target.type !== 'checkbox') {
      $(':checkbox', this).trigger('click');
    }
  });
});
  