<!-- BEGIN: main -->
<div class="fnt-product-detail">
  <div class="d-none" typeof="schema:Product">
    <div rel="schema:review">
      <div typeof="schema:Review">
        <div rel="schema:reviewRating">
          <div typeof="schema:Rating">
            <div property="schema:ratingValue" content="4"></div>
            <div property="schema:bestRating" content="5"></div>
          </div>
        </div>
        <div rel="schema:author">
          <div typeof="schema:Person">
            <div property="schema:name" content="Trần Đình Hải"></div>
          </div>
        </div>
      </div>
    </div>
    <div property="schema:mpn" content="{PRODUCT_CODE}"></div>
    <div property="schema:name" content="{TITLE}"></div>
    <div property="schema:description" content="{site_description}">
    </div>
    <div rel="schema:image" resource="{SRC_PRO_FULL}"></div>
    <div rel="schema:brand">
      <div typeof="schema:Brand">
        <div property="schema:name" content="Ford"></div>
      </div>
    </div>
    <div rel="schema:aggregateRating">
      <div typeof="schema:AggregateRating">
        <div property="schema:reviewCount" content="105"></div>
        <div property="schema:ratingValue" content="4.4"></div>
      </div>
    </div>
    <div rel="schema:offers">
      <div typeof="schema:Offer">
        <!-- BEGIN: price1 -->
        <div property="schema:price" content="{PRICE.sale}"></div>
        <div property="schema:priceCurrency" content="VND"></div>
        <div property="schema:priceValidUntil" datatype="xsd:date" content="2025-06-21"></div>
        <!-- END: price1 -->
        <div property="schema:itemCondition" content="https://schema.org/NewCondition"></div>
        <div rel="schema:url" resource="{SELFURL}"></div>
      </div>
    </div>
    <div property="schema:sku" content="{PRODUCT_CODE}"></div>
  </div>
	<div class="fnt-product-inner-detail">
    <div class="row">
      <div class="col-12 col-md-6 col-lg-7">
        <div class="swiper-container fnt-product-image-full-swiper">
          <div class="swiper-wrapper align-items-center align-items-md-unset">
            <div class="swiper-slide">
              <div class="fnt-product-detail-img d-flex align-items-center justify-content-center">
                <img class="swiper-lazy" data-src="{SRC_PRO_LAGE}" alt="{TITLE}" draggable="false">
                <div class="swiper-lazy-preloader swiper-lazy-preloader-black"></div>
              </div>
            </div>
            <!-- BEGIN: prod_image_ver_full -->
            <!-- BEGIN: loop -->
            <div class="swiper-slide">
              <div class="fnt-product-detail-img d-flex align-items-center justify-content-center">
                <img class="swiper-lazy" data-src="{IMG_FULL}" alt="{ALT}" draggable="false">
                <div class="swiper-lazy-preloader swiper-lazy-preloader-black"></div>
              </div>
            </div>
            <!-- END: loop -->
            <!-- END: prod_image_ver_full -->
          </div>
        </div>
        <div class="swiper-container fnt-product-image-thumbs-swiper">
          <div class="swiper-wrapper">
            <div class="swiper-slide">
              <div class="fnt-product-detail-thumbs d-flex align-items-center justify-content-center">
                <img class="img-fluid lazyload" loading="lazy" data-sizes="auto" data-src="{SRC_PRO}" alt="{TITLE}" draggable="false">
              </div>
            </div>
            <!-- BEGIN: prod_image_ver_thumbs -->
            <!-- BEGIN: loop -->
            <div class="swiper-slide">
              <div class="fnt-product-detail-thumbs d-flex align-items-center justify-content-center">
                <img class="img-fluid lazyload" loading="lazy" data-sizes="auto" data-src="{IMG_THUMBS}" alt="{ALT}" draggable="false">
              </div>
            </div>
            <!-- END: loop -->
            <!-- END: prod_image_ver_thumbs -->
          </div>
        </div>
      </div>
      <div class="col-12 col-md-6 col-lg-5">
        <div class="fnt-product-detail-info">
          <h2 class="fnt-product-detail-title">{TITLE}</h2>
          <div class="fnt-product-detail-price mb-4">
            <span>{LANG.detail_pro_price}:</span>
            <!-- BEGIN: price -->
            <!-- BEGIN: no_discounts -->
            <h3 class="fnt-product-detail-money">{PRICE.price_format} {PRICE.unit}</h3>
            <!-- END: no_discounts -->
            <!-- END: price -->
            <!-- BEGIN: contact -->
            <h3 class="fnt-product-detail-money">{LANG.price_contact}</h3>
            <!-- END: contact -->
          </div>
          <!-- BEGIN: hometext -->
          <div class="fnt-product-detail-description mb-4">
            {hometext}
          </div>
          <!-- END: hometext -->
          <div class="fnt-product-detail-button-call">
            [CALL_BUTTON]
          </div>
        </div>
        <!-- BEGIN: adminlink -->
        <div class="fnt-product-detail-admin text-center mt-4">
          {ADMINLINK}
        </div>
        <!-- END: adminlink -->
      </div>
      <div class="col-12">
        <!-- BEGIN: product_detail -->
        <!-- BEGIN: tabs -->
        <div class="fnt-product-detail-tab fnt-tab mt-4 mb-4">
          <ul class="nav nav-tabs" role="tablist">
            <!-- BEGIN: tabs_title -->
            <li class="nav-item" role="presentation">
              <a class="nav-link <!-- BEGIN: active -->active<!-- END: active -->" data-bs-toggle="tab" href="#{TABS_KEY}-{TABS_ID}" role="tab" aria-controls="{TABS_KEY}-{TABS_ID}" aria-selected="false">
                <!-- BEGIN: icon -->
                <img src="{TABS_ICON}" />
                <!-- END: icon -->
                <span>{TABS_TITLE}</span>
              </a>
            </li>
            <!-- END: tabs_title -->
          </ul>
          <div class="tab-content py-4">
            <!-- BEGIN: tabs_content -->
            <div class="tab-pane fade <!-- BEGIN: active -->show active<!-- END: active -->" id="{TABS_KEY}-{TABS_ID}" role="tabpanel" aria-labelledby="{TABS_KEY}-{TABS_ID}-tab">
              {TABS_CONTENT}
            </div>
            <!-- END: tabs_content -->
          </div>
        </div>
        <!-- END: tabs -->
        <!-- BEGIN: other -->
        <div class="fnt-widget mt-5 mb-4">
          <div class="fnt-widget-title">
            <h5>{LANG.detail_others}</h5>
          </div>
          {OTHER}
        </div>
        <!-- END: other -->
        <!-- END: product_detail -->
      </div>
    </div>
	</div>
</div>
<!-- END: main -->