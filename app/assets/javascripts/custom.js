$(document).on('ready page:load', function(event) {
	// apply non-idempotent transformations to the body
	$('.datepicker').datepicker({
		format: 'yyyy-mm-dd',
		startDate : '-3d',
		autoclose : true
	});

	$(document).click(function() {
		$(".alert-info, .alert-danger, .list-group-item-danger, .panel-danger").hide(600);
	});

  $(".data-table").DataTable({
      "columnDefs": [{
          "defaultContent": "-",
          "targets": "_all"
      }],
      "scrollX": true
  });

  $(".switch-checkbox").bootstrapSwitch({
    onText: 'Active',
    offText: 'Deactive',
    size: 'mini'
  });

});
