<!-- BEGIN: main -->
<div class="fnt-widget-filter">
	<form action="" method="POST" onsubmit="check(); return false;">
		<!-- BEGIN: group -->
		<div class="fnt-widget mb-4">
			<div class="fnt-widget-title">
				<h5>{GROUP.title}</h5>
			</div>
			<div class="card">
				<div class="list-group list-group-flush">
					<!-- BEGIN: listgroup -->
					<div class="list-group-item list-group-item-action d-flex justify-content-between align-items-center">
					 	<div class="form-check">
						 	<!-- BEGIN: checkbox -->
							<input class="form-check-input" type="checkbox" name="group_id[]" value="{SUBGROUP.id}" id="fnt_filter_{SUBGROUP.id}" {SUBGROUP.checked}>
							<!-- END: checkbox -->
							<label class="form-check-label" for="fnt_filter_{SUBGROUP.id}">{SUBGROUP.title}</label>
						</div>
					 	<span class="badge bg-primary ms-2">{SUBGROUP.numpro}</span>
					</div>
					<!-- END: listgroup -->
				</div>
			</div>
		</div>
		<!-- END: group -->
		<!-- BEGIN: group_price -->
		<div class="fnt-widget mb-4">
			<div class="fnt-widget-title">
				<h5>Mức giá ({MONEY_UNIT})</h5>
			</div>
			<div class="card">
				<div class="list-group list-group-flush">
					<!-- BEGIN: loop -->
					<div class="list-group-item list-group-item-action d-flex justify-content-between align-items-center">
					 	<div class="form-check">
							<input class="form-check-input" type="checkbox" name="group_price[]" value="{PRICE.price_key}" id="fnt_filter_{PRICE.price_key}" {PRICE.checked}>
							<label class="form-check-label" for="fnt_filter_{PRICE.price_key}">{PRICE.price_value}</label>
						</div>
					</div>
					<!-- END: loop -->
				</div>
			</div>
		</div>
		<!-- END: group_price -->
		<div class="fnt-widget mb-4">
			<button type="submit" name="filter" class="btn btn-primary">
				<div class="d-flex align-items-center">
					<i class="fnt-icon me-2"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"><path d="M14,12V19.88C14.04,20.18 13.94,20.5 13.71,20.71C13.32,21.1 12.69,21.1 12.3,20.71L10.29,18.7C10.06,18.47 9.96,18.16 10,17.87V12H9.97L4.21,4.62C3.87,4.19 3.95,3.56 4.38,3.22C4.57,3.08 4.78,3 5,3V3H19V3C19.22,3 19.43,3.08 19.62,3.22C20.05,3.56 20.13,4.19 19.79,4.62L14.03,12H14Z"/></svg></i>
					<span>{LANG.filter}</span>
				</div>
			</button>
		</div>
	</form>
</div>

<script type="text/javascript" data-show="after">
	function check() {
		var count = 0;
		$('input[name="group_id[]"], input[name="group_price[]"]').each(function() {
			if ($(this).is(':checked'))
				$count++;
		});

		if (count == 0)
			alert('{LANG.filter_no_item}');
	}
</script>
<!-- END: main -->