<!-- BEGIN: main -->
<!-- BEGIN: warning -->
<div class="alert alert-danger alert-dismissible fade show" role="alert">
  {LANG.warning}
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<!-- END: warning -->

<div class="fnt-blog-page" itemtype="http://schema.org/Article" itemscope>
  <div class="fnt-blog-page-inner clearfix">
    <h2 class="fnt-blog-title" itemprop="headline">{CONTENT.title}</h2>
    <div class="d-none" itemprop="author" itemtype="http://schema.org/Organization" itemscope>
      <span itemprop="name">{SCHEMA_ORGNAME}</span>
    </div>
    <span class="d-none" itemprop="datePublished">{SCHEMA_DATEPUBLISHED}</span>
    <span class="d-none" itemprop="dateModified">{SCHEMA_DATEPUBLISHED}</span>
    <span class="d-none" itemprop="mainEntityOfPage">{SCHEMA_URL}</span>
    <span class="d-none" itemprop="image">{SCHEMA_IMAGE}</span>
    <div class="d-none" itemprop="publisher" itemtype="http://schema.org/Organization" itemscope>
      <span itemprop="name">{SCHEMA_ORGNAME}</span>
      <span itemprop="logo" itemtype="http://schema.org/ImageObject" itemscope>
        <span itemprop="url">{SCHEMA_ORGLOGO}</span>
      </span>
    </div>
    <!-- BEGIN: socialbutton -->
    <div class="fnt-blog-info">
      <div class="d-flex align-items-center flex-wrap">
        <div class="fnt-blog-author d-inline-flex align-items-center">
          <i class="fnt-icon"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"><path d="M12,4A4,4 0 0,1 16,8A4,4 0 0,1 12,12A4,4 0 0,1 8,8A4,4 0 0,1 12,4M12,6A2,2 0 0,0 10,8A2,2 0 0,0 12,10A2,2 0 0,0 14,8A2,2 0 0,0 12,6M12,13C14.67,13 20,14.33 20,17V20H4V17C4,14.33 9.33,13 12,13M12,14.9C9.03,14.9 5.9,16.36 5.9,17V18.1H18.1V17C18.1,16.36 14.97,14.9 12,14.9Z"/></svg></i>
          <span><strong>Admin</strong></span>
        </div>
        <div class="fnt-blog-publish-date d-inline-flex align-items-center">
          <i class="fnt-icon"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"><path d="M12,20A8,8 0 0,0 20,12A8,8 0 0,0 12,4A8,8 0 0,0 4,12A8,8 0 0,0 12,20M12,2A10,10 0 0,1 22,12A10,10 0 0,1 12,22C6.47,22 2,17.5 2,12A10,10 0 0,1 12,2M12.5,7V12.25L17,14.92L16.25,16.15L11,13V7H12.5Z"/></svg></i>
          <span>Ngày đăng: <strong>{PUBDATE}</strong></span>
        </div>
        <div class="fnt-blog-view d-inline-flex align-items-center">
          <i class="fnt-icon"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"><path d="M12,9A3,3 0 0,0 9,12A3,3 0 0,0 12,15A3,3 0 0,0 15,12A3,3 0 0,0 12,9M12,17A5,5 0 0,1 7,12A5,5 0 0,1 12,7A5,5 0 0,1 17,12A5,5 0 0,1 12,17M12,4.5C7,4.5 2.73,7.61 1,12C2.73,16.39 7,19.5 12,19.5C17,19.5 21.27,16.39 23,12C21.27,7.61 17,4.5 12,4.5Z"/></svg></i>
          <span>Lượt xem: <strong>{VIEW}</strong></span>
        </div>
      </div>
    </div>
    <!-- END: socialbutton -->

    <!-- BEGIN: imageleft -->
    <div class="fnt-blog-image float-start">
      <figure class="figure">
        <img class="figure-img img-fluid lazyload" loading="lazy" data-sizes="auto" data-src="{CONTENT.image}" alt="{CONTENT.title}" draggable="false">
        <!-- BEGIN: alt --><figcaption class="figure-caption">{CONTENT.imagealt}</figcaption><!-- END: alt -->
      </figure>
    </div>
    <!-- END: imageleft -->

    <!-- BEGIN: description -->
    <div class="fnt-blog-description fw-bold">
      <p itemprop="description">{CONTENT.description}</p>
    </div>
    <!-- END: description -->

    <!-- BEGIN: imagecenter -->
    <div class="fnt-blog-image">
      <figure class="figure">
        <img class="figure-img img-fluid lazyload" loading="lazy" data-sizes="auto" data-src="{CONTENT.image}" alt="{CONTENT.title}" draggable="false">
        <!-- BEGIN: alt --><figcaption class="figure-caption">{CONTENT.imagealt}</figcaption><!-- END: alt -->
      </figure>
    </div>
    <!-- END: imagecenter -->

    <div class="fnt-blog-content">
      {CONTENT.bodytext}
    </div>
  </div>
</div>
<!-- BEGIN: adminlink -->
<script src="{jslink}"></script>
<div class="fnt-blog-admin text-center">
  <a class="btn btn-primary btn-sm" href="{ADMIN_EDIT}">
    <i class="fnt-icon"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"><path d="M5,3C3.89,3 3,3.89 3,5V19A2,2 0 0,0 5,21H19A2,2 0 0,0 21,19V12H19V19H5V5H12V3H5M17.78,4C17.61,4 17.43,4.07 17.3,4.2L16.08,5.41L18.58,7.91L19.8,6.7C20.06,6.44 20.06,6 19.8,5.75L18.25,4.2C18.12,4.07 17.95,4 17.78,4M15.37,6.12L8,13.5V16H10.5L17.87,8.62L15.37,6.12Z"/></svg></i>
    {GLANG.edit}
  </a>
  <a class="btn btn-danger btn-sm" href="javascript:void(0);" onclick="nv_del_content({CONTENT.id}, '{ADMIN_CHECKSS}','{NV_BASE_ADMINURL}')">
    <i class="fnt-icon"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"><path d="M9,3V4H4V6H5V19A2,2 0 0,0 7,21H17A2,2 0 0,0 19,19V6H20V4H15V3H9M7,6H17V19H7V6M9,8V17H11V8H9M13,8V17H15V8H13Z"/></svg></i>
    {GLANG.delete}
  </a>
</div>
<!-- END: adminlink -->
<!-- END: main -->