<!-- BEGIN: main -->
{FILE "header_only.tpl"}
{FILE "header_extended.tpl"}
<div class="row">
	[HEADER]
</div>
<div class="row">
	<div class="col-sm-12 col-md-13">
		[TOP]
		{MODULE_CONTENT}
		[BOTTOM]
	</div>
	<div class="col-sm-6 col-md-6 col-sm-push-6 col-md-push-5">
        [RIGHT]
    </div>
	<div class="col-sm-6 col-md-5 col-sm-pull-6 col-md-pull-6">
		[LEFT]
	</div>
</div>
<div class="row">
	[FOOTER]
</div>
{FILE "footer.tpl"}
<!-- END: main -->