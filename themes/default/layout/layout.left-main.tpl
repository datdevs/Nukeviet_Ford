<!-- BEGIN: main -->
{FILE "header_only.tpl"}
{FILE "header_extended.tpl"}
<div class="fnt-content-wrapper">
	<div class="container">
		<div class="row">
			<div class="col-12 col-lg-9 order-lg-2">
				[TOP]
				{MODULE_CONTENT}
				[BOTTOM]
			</div>
			<div class="col-12 col-lg-3 order-lg-1">
				<div class="fnt-search-form mb-4">
					<input type="text" class="form-control" maxlength="{NV_MAX_SEARCH_LENGTH}" placeholder="{LANG.search}..." required>
					<div class="invalid-tooltip"></div>
					<span class="fnt-btn-search" data-url="{THEME_SEARCH_URL}" data-minlength="{NV_MIN_SEARCH_LENGTH}" data-click="y">
						<i class="fnt-icon"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"><path d="M9.5,3A6.5,6.5 0 0,1 16,9.5C16,11.11 15.41,12.59 14.44,13.73L14.71,14H15.5L20.5,19L19,20.5L14,15.5V14.71L13.73,14.44C12.59,15.41 11.11,16 9.5,16A6.5,6.5 0 0,1 3,9.5A6.5,6.5 0 0,1 9.5,3M9.5,5C7,5 5,7 5,9.5C5,12 7,14 9.5,14C12,14 14,12 14,9.5C14,7 12,5 9.5,5Z"/></svg></i>
					</span>
				</div>
				[LEFT]
			</div>
		</div>
	</div>
</div>
{FILE "footer.tpl"}
<!-- END: main -->