<!-- BEGIN: main -->
<div class="fnt-swiper-slider swiper-container mb-5">
	<div class="swiper-wrapper">
		<!-- BEGIN: loop -->
		<div class="swiper-slide">
			<div class="fnt-home-slider-item">
				<!-- BEGIN: image_only --><img class="swiper-lazy" data-src="{ROW.image}" alt="{ROW.title}" draggable="false"><!-- END: image_only -->
				<!-- BEGIN: image_link -->
				<a href="{ROW.link}" title="{ROW.title}"<!-- BEGIN: target --> target="{ROW.target}"<!-- END: target -->>
					<img class="swiper-lazy" data-src="{ROW.image}" alt="{ROW.title}" draggable="false">
				</a>
				<!-- END: image_link -->
				<div class="swiper-lazy-preloader swiper-lazy-preloader-black"></div>
			</div>
		</div>
		<!-- END: loop -->
	</div>
	<div class="swiper-pagination d-none d-lg-block"></div>
	<div class="swiper-button-next"></div>
  <div class="swiper-button-prev"></div>
</div>
<!-- END: main -->