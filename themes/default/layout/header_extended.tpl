<header class="fnt-header">
  <div class="fnt-ontop-head d-none d-sm-block">
    <div class="container">
      <div class="d-flex align-items-center justify-content-between flex-wrap">
        <div class="fnt-contact-info">
          [CONTACT_DEFAULT]
        </div>
        <div class="fnt-address-info">
          [ADDRESS_INFO]
        </div>
      </div>
    </div>
  </div>
  <div class="fnt-header-wrapper">
    <div class="container">
      <div class="d-flex align-items-center justify-content-between">
        <div class="fnt-logo">
          <a id="fnt-logo" href="{THEME_SITE_HREF}">
            <img class="lazyload" loading="lazy" data-sizes="auto" data-src="{LOGO_SRC}" alt="{SITE_NAME}" width="62" height="38" draggable="false">
          </a>
          <span class="fnt-brand-name ford-antenna">Nha Trang</span>
          <span class="fnt-name-own ford-antenna">TVBH Bùi Trần Chí Cường</span>
        </div>
        <div class="fnt-menu-wrapper">
          [MENU_SITE]
        </div>
      </div>
    </div>
  </div>
</header>
<section>
  <!-- BEGIN: breadcrumbs -->
  <div class="fnt-breadcrumbs lazyload" data-bgset="/themes/default/images/ford-everest.jpg [(min-width: 768px)]" data-sizes="auto">
    <div class="container d-flex align-items-center justify-content-md-center">
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item" itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem"><a href="{THEME_SITE_HREF}" itemprop="item" title="{LANG.Home}"><span itemprop="name">{LANG.Home}</span></a><i class="d-none" itemprop="position" content="1"></i></li>
          <!-- BEGIN: loop -->
          <li class="breadcrumb-item{isActive}" itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
            <a href="{BREADCRUMBS.link}" itemprop="item" title="{BREADCRUMBS.title}"><span class="txt" itemprop="name">{BREADCRUMBS.title}</span></a><i class="d-none" itemprop="position" content="{BREADCRUMBS.position}"></i>
          </li>
          <!-- END: loop -->
        </ol>
      </nav>
    </div>
  </div>
  <!-- END: breadcrumbs -->
  [THEME_ERROR_INFO]