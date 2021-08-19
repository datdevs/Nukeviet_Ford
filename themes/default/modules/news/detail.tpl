<!-- BEGIN: main -->
<!-- BEGIN: no_public -->
<div class="alert alert-danger alert-dismissible fade show" role="alert">
  {LANG.no_public}
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<!-- END: no_public -->
<!-- BEGIN: adminlink -->
<div class="fnt-blog-admin mb-3">
  {ADMINLINK}
</div>
<!-- END: adminlink -->
<div class="fnt-blog-page" itemtype="http://schema.org/NewsArticle" itemscope>
  <div class="fnt-blog-page-inner clearfix">
    <h2 class="fnt-blog-title" itemprop="headline">{DETAIL.title}</h2>
    <div class="d-none" itemprop="author" itemtype="http://schema.org/Person" itemscope>
      <span itemprop="name">{SCHEMA_AUTHOR}</span>
    </div>
    <span class="d-none" itemprop="datePublished">{SCHEMA_DATEPUBLISHED}</span>
    <span class="d-none" itemprop="dateModified">{SCHEMA_DATEPUBLISHED}</span>
    <span class="d-none" itemprop="description">{SCHEMA_HEADLINE}</span>
    <span class="d-none" itemprop="mainEntityOfPage">{SCHEMA_URL}</span>
    <span class="d-none" itemprop="image">{SCHEMA_IMAGE}</span>
    <div class="d-none" itemprop="publisher" itemtype="http://schema.org/Organization" itemscope>
      <span itemprop="name">{SCHEMA_ORGNAME}</span>
      <span itemprop="logo" itemtype="http://schema.org/ImageObject" itemscope>
        <span itemprop="url">{SCHEMA_ORGLOGO}</span>
      </span>
    </div>
    <div class="fnt-blog-info">
      <div class="d-flex align-items-center flex-wrap">
        <div class="fnt-blog-author d-inline-flex align-items-center">
          <i class="fnt-icon"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"><path d="M12,4A4,4 0 0,1 16,8A4,4 0 0,1 12,12A4,4 0 0,1 8,8A4,4 0 0,1 12,4M12,6A2,2 0 0,0 10,8A2,2 0 0,0 12,10A2,2 0 0,0 14,8A2,2 0 0,0 12,6M12,13C14.67,13 20,14.33 20,17V20H4V17C4,14.33 9.33,13 12,13M12,14.9C9.03,14.9 5.9,16.36 5.9,17V18.1H18.1V17C18.1,16.36 14.97,14.9 12,14.9Z"/></svg></i>
          <span><strong>Admin</strong></span>
        </div>
        <div class="fnt-blog-publish-date d-inline-flex align-items-center">
          <i class="fnt-icon"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"><path d="M12,20A8,8 0 0,0 20,12A8,8 0 0,0 12,4A8,8 0 0,0 4,12A8,8 0 0,0 12,20M12,2A10,10 0 0,1 22,12A10,10 0 0,1 12,22C6.47,22 2,17.5 2,12A10,10 0 0,1 12,2M12.5,7V12.25L17,14.92L16.25,16.15L11,13V7H12.5Z"/></svg></i>
          <span>Ngày đăng: <strong>{DETAIL.publtime}</strong></span>
        </div>
        <div class="fnt-blog-view d-inline-flex align-items-center">
          <i class="fnt-icon"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"><path d="M12,9A3,3 0 0,0 9,12A3,3 0 0,0 12,15A3,3 0 0,0 15,12A3,3 0 0,0 12,9M12,17A5,5 0 0,1 7,12A5,5 0 0,1 12,7A5,5 0 0,1 17,12A5,5 0 0,1 12,17M12,4.5C7,4.5 2.73,7.61 1,12C2.73,16.39 7,19.5 12,19.5C17,19.5 21.27,16.39 23,12C21.27,7.61 17,4.5 12,4.5Z"/></svg></i>
          <span>Lượt xem: <strong>{DETAIL.hitstotal}</strong></span>
        </div>
      </div>
    </div>
    <!-- BEGIN: showhometext -->
    <!-- BEGIN: imgthumb -->
    <div class="fnt-blog-image float-start">
    <!-- BEGIN: note -->
    <figure class="figure">
      <img class="figure-img img-fluid lazyload" loading="lazy" data-sizes="auto" data-src="{DETAIL.homeimgfile}" alt="{DETAIL.image.note}" draggable="false">
      <figcaption class="figure-caption">{DETAIL.image.note}</figcaption>
    </figure>
    <!-- END: note -->
    <!-- BEGIN: empty -->
    <figure class="figure">
      <img class="figure-img img-fluid lazyload" loading="lazy" data-sizes="auto" data-src="{DETAIL.homeimgfile}" alt="{DETAIL.image.note}" draggable="false">
    </figure>
    <!-- END: empty -->
    </div>
    <!-- END: imgthumb -->
    <div class="fnt-blog-description fw-bold">
      <p itemprop="description">{DETAIL.hometext}</p>
    </div>
    <!-- BEGIN: imgfull -->
    <div class="fnt-blog-image text-center">
      <figure class="figure">
        <img class="figure-img img-fluid lazyload" loading="lazy" data-sizes="auto" data-src="{DETAIL.image.src}" alt="{DETAIL.image.alt}" draggable="false">
      </figure>
    </div>
    <!-- END: imgfull -->
    <!-- END: showhometext -->
    <div class="fnt-blog-content">
      {DETAIL.bodyhtml}
    </div>
    <!-- BEGIN: copyright -->
    <div class="alert alert-danger">{COPYRIGHT}</div>
    <!-- END: copyright -->
    <!-- BEGIN: keywords -->
    <div class="fnt-blog-tags">
      <div class="d-flex align-items-center">
        <span class="text-primary me-2 fs-5 d-flex">
          <i class="fnt-icon"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"><path d="M5.5,9A1.5,1.5 0 0,0 7,7.5A1.5,1.5 0 0,0 5.5,6A1.5,1.5 0 0,0 4,7.5A1.5,1.5 0 0,0 5.5,9M17.41,11.58C17.77,11.94 18,12.44 18,13C18,13.55 17.78,14.05 17.41,14.41L12.41,19.41C12.05,19.77 11.55,20 11,20C10.45,20 9.95,19.78 9.58,19.41L2.59,12.42C2.22,12.05 2,11.55 2,11V6C2,4.89 2.89,4 4,4H9C9.55,4 10.05,4.22 10.41,4.58L17.41,11.58M13.54,5.71L14.54,4.71L21.41,11.58C21.78,11.94 22,12.45 22,13C22,13.55 21.78,14.05 21.42,14.41L16.04,19.79L15.04,18.79L20.75,13L13.54,5.71Z" /></svg></i>
        </span>
        <div class="d-flex align-items-center flex-wrap text-muted">
          <!-- BEGIN: loop --><a class="text-muted text-decoration-none" title="{KEYWORD}" href="{LINK_KEYWORDS}"><small>{KEYWORD}</small></a>{SLASH}
          <!-- END: loop -->
        </div>
      </div>
    </div>
    <!-- END: keywords -->
    <!-- BEGIN: socialbutton -->
    <div class="fnt-facebook-plugins">
      <div id="fb-root"></div>
      <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v9.0&appId=1269680816737320&autoLogAppEvents=1" nonce="fJhw2jc2"></script>
      <div class="fb-like" data-href="{SELFURL}" data-width="" data-layout="button_count" data-action="like" data-size="large" data-share="false"></div>
      <div class="fb-share-button" data-href="{SELFURL}" data-layout="button_count" data-size="large"><a target="_blank" href="{SELFURL}" class="fb-xfbml-parse-ignore">Chia sẻ</a></div>
      <div class="fb-comments mt-3" data-href="{SELFURL}" data-width="100%" data-numposts="10"></div>
    </div>
    <!-- END: socialbutton -->
  </div>
</div>
<!-- BEGIN: others -->
<!-- BEGIN: topic -->
<div class="fnt-blog-more">
  <h4>{LANG.topic}</h4>
  <ul class="list-unstyled">
    <!-- BEGIN: loop -->
    <li class="d-flex align-items-center flex-wrap mb-2">
      <i class="fnt-icon me-2"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"><path d="M20 5L20 19L4 19L4 5H20M20 3H4C2.89 3 2 3.89 2 5V19C2 20.11 2.89 21 4 21H20C21.11 21 22 20.11 22 19V5C22 3.89 21.11 3 20 3M18 15H6V17H18V15M10 7H6V13H10V7M12 9H18V7H12V9M18 11H12V13H18V11Z"/></svg></i>
      <a class="h6 mb-0 text-muted me-1" href="{TOPIC.link}" title="{TOPIC.title}" {RELATED_NEW.target_blank}>{TOPIC.title}</a>
      <small>({TOPIC.time})</small>
    </li>
    <!-- END: loop -->
  </ul>
</div>
<!-- END: topic -->
<!-- BEGIN: related_new -->
<div class="fnt-blog-more">
  <h4>{LANG.related_new}</h4>
  <ul class="list-unstyled">
    <!-- BEGIN: loop -->
    <li class="d-flex align-items-center flex-wrap mb-2">
      <i class="fnt-icon me-2"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"><path d="M20 5L20 19L4 19L4 5H20M20 3H4C2.89 3 2 3.89 2 5V19C2 20.11 2.89 21 4 21H20C21.11 21 22 20.11 22 19V5C22 3.89 21.11 3 20 3M18 15H6V17H18V15M10 7H6V13H10V7M12 9H18V7H12V9M18 11H12V13H18V11Z"/></svg></i>
      <a class="h6 mb-0 text-muted me-1" href="{RELATED_NEW.link}" title="{RELATED_NEW.title}" {RELATED_NEW.target_blank}>{RELATED_NEW.title}</a>
      <small>({RELATED_NEW.time})</small>
    </li>
    <!-- END: loop -->
  </ul>
</div>
<!-- END: related_new -->
<!-- BEGIN: related -->
<div class="fnt-blog-more">
  <h4>{LANG.related}</h4>
  <ul class="list-unstyled">
    <!-- BEGIN: loop -->
    <li class="d-flex align-items-center flex-wrap mb-2">
      <i class="fnt-icon me-2"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"><path d="M20 5L20 19L4 19L4 5H20M20 3H4C2.89 3 2 3.89 2 5V19C2 20.11 2.89 21 4 21H20C21.11 21 22 20.11 22 19V5C22 3.89 21.11 3 20 3M18 15H6V17H18V15M10 7H6V13H10V7M12 9H18V7H12V9M18 11H12V13H18V11Z"/></svg></i>
      <a class="h6 mb-0 text-muted me-1" href="{RELATED.link}" title="{RELATED.title}" {RELATED.target_blank}>{RELATED.title}</a>
      <small>({RELATED.time})</small>
    </li>
    <!-- END: loop -->
  </ul>
</div>
<!-- END: related -->
<!-- END: others -->
<!-- BEGIN: jslink -->
<script src="{jslink}"></script>
<!-- END: jslink -->
<!-- END: main -->
<!-- BEGIN: no_permission -->
<div class="alert alert-info alert-dismissible fade show" role="alert">
  {NO_PERMISSION}
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<!-- END: no_permission -->
