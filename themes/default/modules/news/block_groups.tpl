<!-- BEGIN: main -->
<div class="fnt-blog-widget list-group list-group-flush">
  <!-- BEGIN: loop -->
  <a class="list-group-item list-group-item-action" href="{ROW.link}" {ROW.target_blank}>
    <div class="d-flex">
      <!-- BEGIN: img -->
      <img class="lazyload" loading="lazy" data-sizes="auto" data-src="{ROW.thumb}" alt="{ROW.title}" height="80" width="80" draggable="false">
      <!-- END: img -->
      <div class="fnt-blog-widget-info">
        <h6 class="fnt-blog-widget-title" title="{ROW.title}">{ROW.title_clean}</h6>
        <div class="fnt-blog-info">
					<div class="d-flex align-items-center flex-wrap">
						<div class="fnt-blog-publish-date d-inline-flex align-items-center">
							<i class="fnt-icon"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"><path d="M12,20A8,8 0 0,0 20,12A8,8 0 0,0 12,4A8,8 0 0,0 4,12A8,8 0 0,0 12,20M12,2A10,10 0 0,1 22,12A10,10 0 0,1 12,22C6.47,22 2,17.5 2,12A10,10 0 0,1 12,2M12.5,7V12.25L17,14.92L16.25,16.15L11,13V7H12.5Z"/></svg></i>
							<span>{ROW.publishdate}</span>
						</div>
					</div>
				</div>
      </div>
    </div>
  </a>
  <!-- END: loop -->
</div>
<!-- END: main -->
