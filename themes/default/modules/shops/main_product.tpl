<!-- BEGIN: main -->
<div class="fnt-product-content">
  <!-- BEGIN: displays -->
  <div class="fnt-product-sort d-flex align-items-center justify-content-end mb-5">
    <label>{LANG.displays_product}</label>
    <select class="form-select" name="sort" id="sort" onchange="nv_chang_price();">
      <!-- BEGIN: sorts -->
      <option value="{key}" {se}> {value}</option>
      <!-- END: sorts -->
    </select>
  </div>
  <!-- END: displays -->
  <div class="fnt-product-grid row">
    <!-- BEGIN: items -->
    <div class="fnt-product-col col-6 col-lg-{num}">
      <div class="fnt-product-item" data-url="{LINK}">
        <div class="fnt-product-image">
          <img class="lazyload" loading="lazy" data-sizes="auto" data-src="{IMG_SRC}" alt="{TITLE}" draggable="false">
        </div>
        <div class="fnt-divider"></div>
        <div class="fnt-product-info">
          <div class="fnt-product-title">
            <h6><a class="fnt-product-item-link" href="{LINK}" title="{TITLE}">{TITLE0}</a></h6>
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
          <input class="form-check-input" type="checkbox" value="{ID}" {ch} onclick="nv_compare({ID});" id="compare_{ID}" />
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
    <!-- END: items -->
    <!-- BEGIN: pages -->
    <div class="fnt-product-col col-12">
      {generate_page}
    </div>
    <!-- END: pages -->
  </div>
</div>
<!-- END: main -->