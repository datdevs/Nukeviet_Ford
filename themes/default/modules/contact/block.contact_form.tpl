<!-- BEGIN: main -->
<div class="fnt-web-function">
  <div class="container">
    <div class="row g-2 g-md-4">
      <div class="col-6 col-md-3 col-count">
        <div class="fnt-web-function-item">
          <a class="fnt-web-function-link d-flex align-items-center justify-content-center flex-column" data-form="car_total" data-bs-toggle="modal" data-bs-target="#fnt-contact-form-block" href="javascript:void(0)">
            <i class="fnt-icon">{FILE "../../images/icons/accounting.svg"}</i>
            <span>Chi phí lăn bánh</span>
          </a>
        </div>
      </div>
      <div class="col-6 col-md-3 col-count">
        <div class="fnt-web-function-item">
          <a class="fnt-web-function-link d-flex align-items-center justify-content-center flex-column" data-form="installment" data-bs-toggle="modal" data-bs-target="#fnt-contact-form-block" href="javascript:void(0)">
            <i class="fnt-icon">{FILE "../../images/icons/payment.svg"}</i>
            <span>Chi phí trả góp</span>
          </a>
        </div>
      </div>
      <div class="col-6 col-md-3 col-count">
        <div class="fnt-web-function-item">
          <a class="fnt-web-function-link d-flex align-items-center justify-content-center flex-column" data-form="drive_test" data-bs-toggle="modal" data-bs-target="#fnt-contact-form-block" href="javascript:void(0)">
            <i class="fnt-icon">{FILE "../../images/icons/wheel.svg"}</i>
            <span>Đăng ký lái thử</span>
          </a>
        </div>
      </div>
      <div class="col-6 col-md-3 col-count">
        <div class="fnt-web-function-item">
          <a class="fnt-web-function-link d-flex align-items-center justify-content-center flex-column" data-form="car_service" data-bs-toggle="modal" data-bs-target="#fnt-contact-form-block" href="javascript:void(0)">
            <i class="fnt-icon">{FILE "../../images/icons/car-repair.svg"}</i>
            <span>Đăng ký bảo dưỡng</span>
          </a>
        </div>
      </div>
    </div>
  </div>
  <div class="modal fade" id="fnt-contact-form-block" data-module="{MODULE}">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
      <div class="modal-content" id="block_get_cs" data-cs="{NV_CHECK_SESSION}"></div>
    </div>
  </div>
</div>
<script src="{JS}"></script>
<script>
(()=>{var t=window.jQuery,e=[].slice.call(document.getElementsByClassName("fnt-web-function-link")),n=document.getElementById("fnt-contact-form-block"),a=document.getElementById("block_get_cs");n.addEventListener("hidden.bs.modal",(function(){a.innerHTML=null})),e.map((function(e){return e.addEventListener("click",(function(e){e.preventDefault();var c=this.getAttribute("data-form"),l=n.getAttribute("data-module"),o=a.getAttribute("data-cs"),d=document.createElement("script");return d.type="text/javascript",d.src="/themes/default/app/build/block_contact_form.js",t.ajax({type:"POST",cache:!1,url:"".concat(nv_base_siteurl,"index.php?").concat(nv_lang_variable,"=").concat(nv_lang_data,"&").concat(nv_name_variable,"=").concat(l),data:"loadForm=".concat(c,"&checkss=").concat(o),dataType:"html",success:function(t){a.innerHTML=t,a.appendChild(d),change_captcha()}}),!1})),!1}))})();
</script>
<!-- END: main -->