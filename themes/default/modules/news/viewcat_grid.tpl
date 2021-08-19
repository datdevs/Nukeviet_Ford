<!-- BEGIN: main -->
<div class="fnt-blog-grid row">
	<!-- BEGIN: featuredloop -->
	<div class="col-12 col-md-6 fnt-blog-col">
		<div class="fnt-blog-card card">
			<!-- BEGIN: image -->
			<div class="fnt-blog-card-img">
				<a href="{CONTENT.link}" {CONTENT.target_blank}>
					<img class="lazyload" loading="lazy" data-sizes="auto" data-src="{HOMEIMG1}" alt="{HOMEIMGALT1}" draggable="false">
				</a>
			</div>
			<!-- END: image -->
			<div class="card-body">
				<h4 class="fnt-blog-card-title card-title"><a href="{CONTENT.link}" {CONTENT.target_blank}>{CONTENT.title}</a></h4>
				<div class="fnt-blog-info">
					<div class="d-flex align-items-center flex-wrap">
						<div class="fnt-blog-publish-date d-inline-flex align-items-center">
							<i class="fnt-icon"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"><path d="M12,20A8,8 0 0,0 20,12A8,8 0 0,0 12,4A8,8 0 0,0 4,12A8,8 0 0,0 12,20M12,2A10,10 0 0,1 22,12A10,10 0 0,1 12,22C6.47,22 2,17.5 2,12A10,10 0 0,1 12,2M12.5,7V12.25L17,14.92L16.25,16.15L11,13V7H12.5Z"/></svg></i>
							<span>Ngày đăng: <strong>{CONTENT.publtime}</strong></span>
						</div>
						<div class="fnt-blog-view d-inline-flex align-items-center">
							<i class="fnt-icon"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"><path d="M12,9A3,3 0 0,0 9,12A3,3 0 0,0 12,15A3,3 0 0,0 15,12A3,3 0 0,0 12,9M12,17A5,5 0 0,1 7,12A5,5 0 0,1 12,7A5,5 0 0,1 17,12A5,5 0 0,1 12,17M12,4.5C7,4.5 2.73,7.61 1,12C2.73,16.39 7,19.5 12,19.5C17,19.5 21.27,16.39 23,12C21.27,7.61 17,4.5 12,4.5Z"/></svg></i>
							<span>Lượt xem: <strong>{CONTENT.hitstotal}</strong></span>
						</div>
					</div>
				</div>
				<div class="fnt-blog-card-description card-text">{CONTENT.hometext}</div>
				<!-- BEGIN: adminlink -->
				<div class="fnt-blog-admin mt-3">
					{ADMINLINK}
				</div>
				<!-- END: adminlink -->
			</div>
		</div>
	</div>
	<!-- END: featuredloop -->
	<!-- BEGIN: viewcatloop -->
	<div class="col-12 col-md-6 fnt-blog-col">
		<div class="fnt-blog-card card">
			<!-- BEGIN: image -->
			<div class="fnt-blog-card-img">
				<a href="{CONTENT.link}" {CONTENT.target_blank}>
					<img class="lazyload" loading="lazy" data-sizes="auto" data-src="{HOMEIMG1}" alt="{HOMEIMGALT1}" draggable="false">
				</a>
			</div>
			<!-- END: image -->
			<div class="card-body">
				<h4 class="fnt-blog-card-title card-title"><a href="{CONTENT.link}" {CONTENT.target_blank}>{CONTENT.title}</a></h4>
				<div class="fnt-blog-info">
					<div class="d-flex align-items-center flex-wrap">
						<div class="fnt-blog-publish-date d-inline-flex align-items-center">
							<i class="fnt-icon"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"><path d="M12,20A8,8 0 0,0 20,12A8,8 0 0,0 12,4A8,8 0 0,0 4,12A8,8 0 0,0 12,20M12,2A10,10 0 0,1 22,12A10,10 0 0,1 12,22C6.47,22 2,17.5 2,12A10,10 0 0,1 12,2M12.5,7V12.25L17,14.92L16.25,16.15L11,13V7H12.5Z"/></svg></i>
							<span>Ngày đăng: <strong>{CONTENT.publtime}</strong></span>
						</div>
						<div class="fnt-blog-view d-inline-flex align-items-center">
							<i class="fnt-icon"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"><path d="M12,9A3,3 0 0,0 9,12A3,3 0 0,0 12,15A3,3 0 0,0 15,12A3,3 0 0,0 12,9M12,17A5,5 0 0,1 7,12A5,5 0 0,1 12,7A5,5 0 0,1 17,12A5,5 0 0,1 12,17M12,4.5C7,4.5 2.73,7.61 1,12C2.73,16.39 7,19.5 12,19.5C17,19.5 21.27,16.39 23,12C21.27,7.61 17,4.5 12,4.5Z"/></svg></i>
							<span>Lượt xem: <strong>{CONTENT.hitstotal}</strong></span>
						</div>
					</div>
				</div>
				<div class="fnt-blog-card-description card-text">{CONTENT.hometext}</div>
				<!-- BEGIN: adminlink -->
				<div class="fnt-blog-admin mt-3">
					{ADMINLINK}
				</div>
				<!-- END: adminlink -->
			</div>
		</div>
	</div>
	<!-- END: viewcatloop -->
	<!-- BEGIN: generate_page -->
	<div class="col-12 fnt-blog-col">
		<div class="fnt-pagination">
			{GENERATE_PAGE}
		</div>
	</div>
	<!-- END: generate_page -->
</div>
<!-- BEGIN: jslink -->
<script src="{jslink}"></script>
<!-- END: jslink -->
<!-- END: main -->