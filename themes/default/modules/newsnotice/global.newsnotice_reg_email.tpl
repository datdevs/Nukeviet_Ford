<!-- BEGIN: main -->
<div class="fnt-newsletter-description">
	<a href="#fnt-newsletter-form" data-bs-toggle="modal" data-bs-target="#fnt-newsletter-form">
		<span class="fnt-icon-circle">
			<i class="fnt-icon"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"><path d="M12 .64L8.23 3H5V5L2.97 6.29C2.39 6.64 2 7.27 2 8V18C2 19.11 2.9 20 4 20H20C21.11 20 22 19.11 22 18V8C22 7.27 21.61 6.64 21.03 6.29L19 5V3H15.77M7 5H17V9.88L12 13L7 9.88M8 6V7.5H16V6M5 7.38V8.63L4 8M19 7.38L20 8L19 8.63M8 8.5V10H16V8.5Z"/></svg></i>
		</span>
		{BLOCK_DATA.text}
	</a>
</div>
<div class="modal fade" id="fnt-newsletter-form" tabindex="-1" aria-labelledby="fnt-newsletter-form-label" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="fnt-newsletter-form-label">Đăng ký nhận khuyến mãi</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
			<div class="fnt-modal-image fnt-ads">
				<img class="lazyload" loading="lazy" data-sizes="auto" data-src="/themes/default/images/uu-dai-ford.png" alt="fnt-modal-image" draggable="false">
			</div>
      <div class="modal-body">
        <form class="fnt-email-newsletter" action="{ACTION}" method="post">
					<div class="row g-3">
						<div class="col-12">
							<div class="form-floating">
								<input type="text" name="email" id="{MODULE_NAME}_email" class="form-control" placeholder="Enter your email">
								<label for="{MODULE_NAME}_email">Email</label>
								<div class="invalid-tooltip"></div>
							</div>
						</div>
						<div class="col-12">
							<button type="button" class="btn btn-primary fnt-submit-email">
								<div class="d-flex align-items-center justify-content-center">
									<span>Đăng ký</span>
									<i class="fnt-icon ms-2"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"><path d="M2,21L23,12L2,3V10L17,12L2,14V21Z"/></svg></i>
								</div>
							</button>
						</div>
					</div>
				</form>
      </div>
    </div>
  </div>
</div>
<script>
jQuery(document).ready(function(){jQuery("#{MODULE_NAME}_email").keyup(function(){jQuery(this).removeClass("is-invalid"),jQuery(this).parent().find(".invalid-tooltip").text("")}),jQuery(".fnt-submit-email").click(function(){const e=jQuery("#{MODULE_NAME}_email");var t=e.val();return""==t?(e.parent().find(".invalid-tooltip").text(""),e.parent().find(".invalid-tooltip").text("{LANG.error_email_empty}"),e.addClass("is-invalid"),e.focus()):nv_email_check(document.getElementById("{MODULE_NAME}_email"))?(e.parent().find(".invalid-tooltip").text(""),$.ajax({type:"get",url:"{NV_BASE_SITEURL}index.php?{NV_NAME_VARIABLE}=newsnotice&{NV_OP_VARIABLE}=checkmail",data:"email="+t,success:function(i){0<i?(e.parent().find(".invalid-tooltip").text("{LANG.error_existed_email}"),e.addClass("is-invalid"),e.focus()):window.location.href="{NV_BASE_SITEURL}index.php?{NV_NAME_VARIABLE}=newsnotice&status=success&email="+t}})):(e.parent().find(".invalid-tooltip").text(""),e.parent().find(".invalid-tooltip").text("{LANG.error_email_type}"),e.addClass("is-invalid"),e.focus()),!1})});
</script>
<!-- END: main -->