<!-- BEGIN: main -->
<div class="fnt-product-content">
  <div class="d-flex align-items-center justify-content-between flex-wrap mb-5">
    <h3 class="me-3 mb-sm-0">{CAT_NAME}</h3>
    <!-- BEGIN: displays -->
    <div>
      <div class="fnt-product-sort d-flex align-items-center">
        <label>{LANG.displays_product}</label>
        <select class="form-select" name="sort" id="sort" onchange="nv_chang_price();">
          <!-- BEGIN: sorts -->
          <option value="{key}" {se}> {value}</option>
          <!-- END: sorts -->
        </select>
      </div>
    </div>
    <!-- END: displays -->
  </div>
  <div class="fnt-product-grid row">
		<!-- BEGIN: row -->
		<div class="fnt-product-col col-6 col-lg-4">
			<div class="fnt-product-item" data-url="{link_pro}">
        <div class="fnt-product-image">
          <img class="lazyload" loading="lazy" data-sizes="auto" data-src="{img_pro}" alt="{title_pro}" draggable="false">
        </div>
        <div class="fnt-divider"></div>
        <div class="fnt-product-info">
          <div class="fnt-product-title">
            <h6><a class="fnt-product-item-link" href="{link_pro}" title="{title_pro}">{title_pro}</a></h6>
          </div>
          <div class="fnt-product-price">
            <div class="h4">
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
      <!-- BEGIN: compare -->
      <div class="d-flex">
        <div class="form-check m-0">
          <input class="form-check-input" type="checkbox" value="{id}" {ch} onclick="nv_compare({id});" id="compare_{id}" />
        </div>
        <a href="javascript:void(0)" onclick="nv_compare_click();">{LANG.compare}</a>
      </div>
      <!-- END: compare -->
      <!-- BEGIN: adminlink -->
      <div class="fnt-product-admin mt-3">
        {ADMINLINK}
      </div>
      <!-- END: adminlink -->
		</div>
		<!-- END: row -->
    <!-- BEGIN: pages -->
    <div class="fnt-product-col col-12">
      {pages}
    </div>
    <!-- END: pages -->
  </div>
</div>
<!-- END: main -->