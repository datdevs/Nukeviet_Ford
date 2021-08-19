<!-- BEGIN: main -->
<div class="fnt-product-block-tab my-5">
	<div class="fnt-tab">
		<!-- BEGIN: nav_tabs -->
		<ul class="nav nav-tabs" role="tablist">
			<!-- BEGIN: loop -->
			<li class="nav-item" role="presentation">
				<a class="nav-link {TAB_ACTIVE}" data-bs-toggle="tab" href="#tab-{TAB_ALIAS}" role="tab" aria-controls="tab-{TAB_ALIAS}" aria-selected="false">
					<span>{TAB_TITLE}</span>
				</a>
			</li>
			<!-- END: loop -->
		</ul>
		<!-- END: nav_tabs -->
		<!-- BEGIN: tabs_content -->
		<div class="tab-content pt-5">
			<!-- BEGIN: loop -->
			<div class="tab-pane fade {TAB_ACTIVE}" id="tab-{TAB_ID}" role="tabpanel" aria-labelledby="tab-{TAB_ID}">
				<div class="fnt-product-grid row">
					<!-- BEGIN: product -->
					<div class="fnt-product-col col-6 col-md-4 col-xl-2">
						<div class="fnt-product-item" data-url="{link}">
							<div class="fnt-product-image">
								<img class="lazyload" loading="lazy" data-sizes="auto" data-src="{src_img}" alt="{title}" draggable="false">
							</div>
							<div class="fnt-divider"></div>
							<div class="fnt-product-info">
								<div class="fnt-product-title">
									<h6><a class="fnt-product-item-link" href="{link}" title="{title}">{title_cut}</a></h6>
								</div>
								<div class="fnt-product-price">
									<div class="h5">
										<!-- BEGIN: price -->
										<!-- BEGIN: no_discounts -->
										<span class="fnt-money">{PRICE.price_format} {PRICE.unit}</span>
										<!-- END: no_discounts -->
										<!-- END: price -->
										<!-- BEGIN: contact -->
										<span class="fnt-money">{LANG.price_contact}</span>
										<!-- END: contact -->
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- END: product -->
				</div>
				<div class="fnt-product-cat-view text-center">
					<a class="fnt-product-cat-viewall btn btn-primary px-4" href="{linkcat}">Xem thêm</a>
				</div>
			</div>
			<!-- END: loop -->
		</div>
		<!-- END: tabs_content -->
	</div>
</div>
<!-- END: main -->