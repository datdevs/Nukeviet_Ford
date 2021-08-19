<!-- BEGIN: subcat -->
<div class="list-group list-group-flush">
  <!-- BEGIN: loop -->
    <a href="{SUBCAT.link}" class="list-group-item list-group-item-action d-flex justify-content-between align-items-center">{SUBCAT.title0} <span class="badge bg-primary ms-2">14</span></a>
    <!-- BEGIN: sub -->
    {SUB}
    <!-- END: sub -->
  <!-- END: loop -->
</div>
<!-- END: subcat -->

<!-- BEGIN: main -->
<div id="news_cat_{MENUID}" class="fnt-blog-cat list-group list-group-flush">
  <!-- BEGIN: cat -->
  <a href="{CAT.link}" class="list-group-item list-group-item-action d-flex justify-content-between align-items-center">{CAT.title0} <span class="badge bg-primary ms-2">{CAT.count}</span></a>
  <!-- END: cat -->
</div>
<!-- END: main -->

<!-- BEGIN: subcat -->
{SUBCAT}
<!-- END: subcat -->