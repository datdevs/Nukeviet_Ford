<!-- BEGIN: main -->
<div class="search mb-5">
	<form action="{BASE_URL_SITE}index.php" name="fsea" method="get" id="fsea">
	  <input type="hidden" name="{NV_LANG_VARIABLE}" value="{NV_LANG_DATA}" />
	  <input type="hidden" name="{NV_NAME_VARIABLE}" value="{MODULE_NAME}" />
	  <input type="hidden" name="{NV_OP_VARIABLE}" value="{OP_NAME}" />

    <div class="row g-3">
      <div class="col-12 col-sm-6">
        <div>
          <label for="key" class="form-label">{LANG.key_title}</label>
          <input type="text" name="q" value="{KEY}" class="form-control" id="key" />
        </div>
      </div>
      <div class="col-12 col-sm-6">
        <div>
          <label for="catid" class="form-label">{LANG.search_cat}</label>
          <select id="catid" name="catid" class="form-select">
            <!-- BEGIN: search_cat -->
            <option value="{SEARCH_CAT.catid}" {SEARCH_CAT.select}>{SEARCH_CAT.xtitle}{SEARCH_CAT.title}</option>
            <!-- END: search_cat -->
          </select>
        </div>
      </div>
      <div class="d-none">
        <div class="col-sm-20">
          <input name="to_date" id="to_date" value="{TO_DATE}" class="form-control" style="width: 90px; display: inline" maxlength="10" readonly="readonly" type="text" />
        </div>
      </div>
      <div class="d-none">
        <div class="col-sm-20">
          <input name="from_date" id="from_date" value="{FROM_DATE}" class="form-control" style="width:90px; display: inline" maxlength="10" readonly="readonly" type="text" />
        </div>
      </div>
      <div class="col-12">
        <div class="text-center">
          <button class="btn btn-primary" type="submit" name="submit" id="submit">
            <div class="d-flex align-items-center">
              <i class="fnt-icon me-2"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"><path d="M9.5,3A6.5,6.5 0 0,1 16,9.5C16,11.11 15.41,12.59 14.44,13.73L14.71,14H15.5L20.5,19L19,20.5L14,15.5V14.71L13.73,14.44C12.59,15.41 11.11,16 9.5,16A6.5,6.5 0 0,1 3,9.5A6.5,6.5 0 0,1 9.5,3M9.5,5C7,5 5,7 5,9.5C5,12 7,14 9.5,14C12,14 14,12 14,9.5C14,7 12,5 9.5,5Z"/></svg></i>
              <span>{LANG.search_title}</span>
            </div>
          </button>
        </div>
      </div>
    </div>
	</form>
</div>
<!-- END: main -->
<!-- BEGIN: results -->
<div class="fnt-product-content search-results">
  <div class="fnt-product-grid row">
    <!-- BEGIN: noneresult -->
    <div class="col-12">
      <p><em>{LANG.search_none} : <strong class="label label-info">{KEY}</strong> {LANG.search_in_module} <strong>{INMOD}</strong></em></p>
    </div>
    <!-- END: noneresult -->
    <!-- BEGIN: result -->
    <div class="fnt-product-col col-6 col-lg-4">
      <div class="fnt-product-item" data-url="{LINK}">
        <div class="fnt-product-image">
          <!-- BEGIN: result_img -->
          <img class="lazyload" loading="lazy" data-sizes="auto" data-src="{IMG_SRC}" draggable="false">
          <!-- END: result_img -->
        </div>
        <div class="fnt-divider"></div>
        <div class="fnt-product-info">
          <div class="fnt-product-title">
            <h6><a class="fnt-product-item-link" href="{LINK}">{TITLEROW}</a></h6>
          </div>
        </div>
      </div>
      <!-- BEGIN: adminlink -->
      <div class="fnt-product-admin mt-3">
        {ADMINLINK}
      </div>
      <!-- END: adminlink -->
    </div>
    <!-- END: result -->
    <!-- BEGIN: pages_result -->
    <div class="fnt-product-col col-12">
      {VIEW_PAGES}
    </div>
    <!-- END: pages_result -->
  </div>
</div>
<!-- END: results -->