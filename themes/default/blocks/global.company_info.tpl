<!-- BEGIN: main -->
<ul class="nav flex-column" itemscope itemtype="http://schema.org/LocalBusiness">
  <li class="nav-item d-none">
    <span itemprop="image">{SITE_LOGO}</span>
    <span itemprop="priceRange">300.000.000 ₫ - 3.000.000.000 ₫</span>
  </li>
  <!-- BEGIN: company_name --><li class="nav-item"><span itemprop="name">{DATA.company_name}</span><!-- BEGIN: company_sortname -->&nbsp;(<span itemprop="alternateName">{DATA.company_sortname}</span>)<!-- END: company_sortname --></li><!-- END: company_name -->
  <!-- BEGIN: company_regcode --><li class="nav-item"><span>{LICENSE}</span></li><!-- END: company_regcode -->
  <!-- BEGIN: company_responsibility --><li class="nav-item"><span>{LANG.company_responsibility}: <span itemprop="founder" itemscope itemtype="http://schema.org/Person"><span itemprop="name">{DATA.company_responsibility}</span></span></span></li><!-- END: company_responsibility -->
  <!-- BEGIN: company_address --><li class="nav-item"><i class="fnt-icon"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"><path d="M12,11.5A2.5,2.5 0 0,1 9.5,9A2.5,2.5 0 0,1 12,6.5A2.5,2.5 0 0,1 14.5,9A2.5,2.5 0 0,1 12,11.5M12,2A7,7 0 0,0 5,9C5,14.25 12,22 12,22C12,22 19,14.25 19,9A7,7 0 0,0 12,2Z"/></svg></i><span itemprop="address" itemscope itemtype="http://schema.org/PostalAddress"><span itemprop="addressLocality">{DATA.company_address}</span></span></li><!-- END: company_address -->
  <!-- BEGIN: company_phone --><li class="nav-item"><i class="fnt-icon"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"><path d="M16,18H7V4H16M11.5,22A1.5,1.5 0 0,1 10,20.5A1.5,1.5 0 0,1 11.5,19A1.5,1.5 0 0,1 13,20.5A1.5,1.5 0 0,1 11.5,22M15.5,1H7.5A2.5,2.5 0 0,0 5,3.5V20.5A2.5,2.5 0 0,0 7.5,23H15.5A2.5,2.5 0 0,0 18,20.5V3.5A2.5,2.5 0 0,0 15.5,1Z"/></svg></i><span><!-- BEGIN: item --><!-- BEGIN: comma -->&nbsp; <!-- END: comma --><!-- BEGIN: href --><a href="tel:{PHONE.href}"><!-- END: href --><span itemprop="telephone">{PHONE.number}</span><!-- BEGIN: href2 --></a><!-- END: href2 --><!-- END: item --></span></li><!-- END: company_phone -->
  <!-- BEGIN: company_fax --><li class="nav-item"><i class="fnt-icon"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"><path d="M11,6H16V8H11V6M8,9V3H19V9A3,3 0 0,1 22,12V18H19V21H8V18H7V9H8M10,5V9H17V5H10M10,15V19H17V15H10M19,11A1,1 0 0,0 18,12A1,1 0 0,0 19,13A1,1 0 0,0 20,12A1,1 0 0,0 19,11M4,9H5A1,1 0 0,1 6,10V17A1,1 0 0,1 5,18H4A2,2 0 0,1 2,16V11A2,2 0 0,1 4,9Z"/></svg></i><span><span itemprop="faxNumber">{DATA.company_fax}</span></span></li><!-- END: company_fax -->
  <!-- BEGIN: company_email --><li class="nav-item"><i class="fnt-icon"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"><path d="M20,8L12,13L4,8V6L12,11L20,6M20,4H4C2.89,4 2,4.89 2,6V18A2,2 0 0,0 4,20H20A2,2 0 0,0 22,18V6C22,4.89 21.1,4 20,4Z"/></svg></i><span><!-- BEGIN: item --><!-- BEGIN: comma -->&nbsp; <!-- END: comma --><a href="mailto:{EMAIL}"><span itemprop="email">{EMAIL}</span></a><!-- END: item --></span></li><!-- END: company_email -->
  <!-- BEGIN: company_website --><li class="nav-item"><i class="fnt-icon"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"><path d="M16.36,14C16.44,13.34 16.5,12.68 16.5,12C16.5,11.32 16.44,10.66 16.36,10H19.74C19.9,10.64 20,11.31 20,12C20,12.69 19.9,13.36 19.74,14M14.59,19.56C15.19,18.45 15.65,17.25 15.97,16H18.92C17.96,17.65 16.43,18.93 14.59,19.56M14.34,14H9.66C9.56,13.34 9.5,12.68 9.5,12C9.5,11.32 9.56,10.65 9.66,10H14.34C14.43,10.65 14.5,11.32 14.5,12C14.5,12.68 14.43,13.34 14.34,14M12,19.96C11.17,18.76 10.5,17.43 10.09,16H13.91C13.5,17.43 12.83,18.76 12,19.96M8,8H5.08C6.03,6.34 7.57,5.06 9.4,4.44C8.8,5.55 8.35,6.75 8,8M5.08,16H8C8.35,17.25 8.8,18.45 9.4,19.56C7.57,18.93 6.03,17.65 5.08,16M4.26,14C4.1,13.36 4,12.69 4,12C4,11.31 4.1,10.64 4.26,10H7.64C7.56,10.66 7.5,11.32 7.5,12C7.5,12.68 7.56,13.34 7.64,14M12,4.03C12.83,5.23 13.5,6.57 13.91,8H10.09C10.5,6.57 11.17,5.23 12,4.03M18.92,8H15.97C15.65,6.75 15.19,5.55 14.59,4.44C16.43,5.07 17.96,6.34 18.92,8M12,2C6.47,2 2,6.5 2,12A10,10 0 0,0 12,22A10,10 0 0,0 22,12A10,10 0 0,0 12,2Z"/></svg></i><span><!-- BEGIN: item --><!-- BEGIN: comma -->&nbsp; <!-- END: comma --><a href="{WEBSITE}" target="_blank"><span itemprop="url">{WEBSITE}</span></a><!-- END: item --></span></li><!-- END: company_website -->
</ul>
<!-- END: main -->