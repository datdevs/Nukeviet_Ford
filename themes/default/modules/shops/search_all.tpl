<!-- BEGIN: form -->
<div id="formsearch" class="mb-5">
	<form action="{NV_BASE_SITEURL}" method="get" name="frm_search" onsubmit="return onsubmitsearch1();">
    <div class="row g-3">
      <div class="col-12 col-sm-6">
        <div>
          <label for="keyword1" class="form-label">{LANG.keyword}</label>
          <input id="keyword1" type="text" value="{value_keyword}" name="keyword" class="form-control">
        </div>
      </div>
      <div class="col-12 col-sm-6">
        <div>
          <label for="cata1" class="form-label">{LANG.product_catalogs}</label>
          <select name="cata" id="cata1" class="form-select">
            <option value="0">{LANG.allcatagories}</option>
            <!-- BEGIN: loopcata -->
            <option {ROW.selected} value="{ROW.catid}">{ROW.xtitle}</option>
            <!-- END: loopcata -->
          </select>
        </div>
      </div>
      <div class="col-12 col-sm-6">
        <div>
          <label>{LANG.price1}</label>
          <input id="price11" type="text" value="{value_price1}" name="price1" class="form-control">
        </div>
      </div>
      <div class="col-12 col-sm-6">
        <div>
          <label>{LANG.price1}</label>
          <input id="price21" size="20" type="text" value="{value_price2}" name="price2" class="form-control">
        </div>
      </div>
      <div class="d-none">
        <div>
          <select name="typemoney" id="typemoney1" class="form-control">
            <option value="0">{LANG.moneyunit}</option>
            <!-- BEGIN: typemoney -->
            <option {ROW.selected} value="{ROW.code}">{ROW.currency}</option>
            <!-- END: typemoney -->
          </select>
        </div>
      </div>
      <div class="col-12">
        <div class="text-center">
          <button class="btn btn-primary" type="submit" name="submit" id="submit" onclick="onsubmitsearch1()">
            <div class="d-flex align-items-center">
              <i class="fnt-icon me-2"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"><path d="M9.5,3A6.5,6.5 0 0,1 16,9.5C16,11.11 15.41,12.59 14.44,13.73L14.71,14H15.5L20.5,19L19,20.5L14,15.5V14.71L13.73,14.44C12.59,15.41 11.11,16 9.5,16A6.5,6.5 0 0,1 3,9.5A6.5,6.5 0 0,1 9.5,3M9.5,5C7,5 5,7 5,9.5C5,12 7,14 9.5,14C12,14 14,12 14,9.5C14,7 12,5 9.5,5Z"/></svg></i>
              <span>{LANG.search}</span>
            </div>
          </button>
        </div>
      </div>
    </div>
	</form>
</div>
<!-- END: form -->
<!-- BEGIN: main -->
<div class="fnt-product-content">
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