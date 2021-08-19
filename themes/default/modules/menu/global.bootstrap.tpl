<!-- BEGIN: submenu -->
<ul class="dropdown-menu" data-bs-popper>
  <!-- BEGIN: loop -->
  <li <!-- BEGIN: submenu -->class="dropend"<!-- END: submenu -->>
    <a class="dropdown-item" href="{SUBMENU.link}"{SUBMENU.target}>{SUBMENU.title_trim}</a>
    <!-- BEGIN: item -->{SUB}<!-- END: item -->
  </li>
  <!-- END: loop -->
</ul>
<!-- END: submenu -->

<!-- BEGIN: main -->
<button id="fnt-menu-hamburger" class="hamburger hamburger--spin d-inline-flex d-lg-none" type="button">
  <span class="hamburger-box">
    <span class="hamburger-inner"></span>
  </span>
</button>  
<nav class="navbar navbar-expand-lg">
  <ul class="navbar-nav">
    <!-- BEGIN: top_menu -->
    <li class="nav-item{TOP_MENU.liDropdown}">
      <a {TOP_MENU.current} href="{TOP_MENU.link}"{TOP_MENU.target}>{TOP_MENU.title_trim}<!-- BEGIN: has_sub --><i class="fnt-icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M7.41,8.58L12,13.17L16.59,8.58L18,10L12,16L6,10L7.41,8.58Z"/></svg></i><!-- END: has_sub --></a> 
      <!-- BEGIN: sub -->{SUB}<!-- END: sub -->
    </li>
    <!-- END: top_menu -->
  </ul>
</nav>
<!-- END: main -->