<!-- BEGIN: main -->
<!-- BEGIN: dep -->
<div class="fnt-box-wrap mt-5">
  <h5 class="fnt-box-wrap-title">{DEP.full_name}</h5>
  <!-- BEGIN: note -->
  <h6 class="fnt-box-wrap-subtitle text-muted">{DEP.note}</h6>
  <!-- END: note -->
  <div class="fnt-box-wrap-text row">
    <!-- BEGIN: phone -->
    <div class="fnt-contact-page-info mt-3 col-12 col-lg-4">
      <div class="d-flex align-items-center">
        <i class="fnt-icon me-4"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M497.39 361.8l-112-48a24 24 0 0 0-28 6.9l-49.6 60.6A370.66 370.66 0 0 1 130.6 204.11l60.6-49.6a23.94 23.94 0 0 0 6.9-28l-48-112A24.16 24.16 0 0 0 122.6.61l-104 24A24 24 0 0 0 0 48c0 256.5 207.9 464 464 464a24 24 0 0 0 23.4-18.6l24-104a24.29 24.29 0 0 0-14.01-27.6z"></path></svg></i>
        <div class="fnt-contact-info-i">
          <div>{LANG.phone}:</div>
          <div class="fnt-contact-info-v">
            <!-- BEGIN: item --><!-- BEGIN: comma -->&nbsp;-&nbsp;<!-- END: comma --><!-- BEGIN: href --><a href="tel:{PHONE.href}"><!-- END: href -->{PHONE.number}<!-- BEGIN: href2 --></a><!-- END: href2 --><!-- END: item -->
          </div>
        </div>
      </div>
    </div>
    <!-- END: phone -->
    <!-- BEGIN: email -->
    <div class="fnt-contact-page-info mt-3 col-12 col-lg-4">
      <div class="d-flex align-items-center">
        <i class="fnt-icon me-4"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M176 216h160c8.84 0 16-7.16 16-16v-16c0-8.84-7.16-16-16-16H176c-8.84 0-16 7.16-16 16v16c0 8.84 7.16 16 16 16zm-16 80c0 8.84 7.16 16 16 16h160c8.84 0 16-7.16 16-16v-16c0-8.84-7.16-16-16-16H176c-8.84 0-16 7.16-16 16v16zm96 121.13c-16.42 0-32.84-5.06-46.86-15.19L0 250.86V464c0 26.51 21.49 48 48 48h416c26.51 0 48-21.49 48-48V250.86L302.86 401.94c-14.02 10.12-30.44 15.19-46.86 15.19zm237.61-254.18c-8.85-6.94-17.24-13.47-29.61-22.81V96c0-26.51-21.49-48-48-48h-77.55c-3.04-2.2-5.87-4.26-9.04-6.56C312.6 29.17 279.2-.35 256 0c-23.2-.35-56.59 29.17-73.41 41.44-3.17 2.3-6 4.36-9.04 6.56H96c-26.51 0-48 21.49-48 48v44.14c-12.37 9.33-20.76 15.87-29.61 22.81A47.995 47.995 0 0 0 0 200.72v10.65l96 69.35V96h320v184.72l96-69.35v-10.65c0-14.74-6.78-28.67-18.39-37.77z"></path></svg></i>
        <div class="fnt-contact-info-i">
          <div>{LANG.email}:</div>
          <div class="fnt-contact-info-v">
            <!-- BEGIN: item --><!-- BEGIN: comma -->&nbsp;-&nbsp;<!-- END: comma --><a href="mailto:{EMAIL}">{EMAIL}</a><!-- END: item -->
          </div>
        </div>
      </div>
    </div>
    <!-- END: email -->
    <!-- BEGIN: address -->
    <div class="fnt-contact-page-info mt-3 col-12 col-lg-4">
      <div class="d-flex align-items-center">
        <i class="fnt-icon me-4"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"><path d="M288 0c-69.59 0-126 56.41-126 126 0 56.26 82.35 158.8 113.9 196.02 6.39 7.54 17.82 7.54 24.2 0C331.65 284.8 414 182.26 414 126 414 56.41 357.59 0 288 0zm0 168c-23.2 0-42-18.8-42-42s18.8-42 42-42 42 18.8 42 42-18.8 42-42 42zM20.12 215.95A32.006 32.006 0 0 0 0 245.66v250.32c0 11.32 11.43 19.06 21.94 14.86L160 448V214.92c-8.84-15.98-16.07-31.54-21.25-46.42L20.12 215.95zM288 359.67c-14.07 0-27.38-6.18-36.51-16.96-19.66-23.2-40.57-49.62-59.49-76.72v182l192 64V266c-18.92 27.09-39.82 53.52-59.49 76.72-9.13 10.77-22.44 16.95-36.51 16.95zm266.06-198.51L416 224v288l139.88-55.95A31.996 31.996 0 0 0 576 426.34V176.02c0-11.32-11.43-19.06-21.94-14.86z"></path></svg></i>
        <div class="fnt-contact-info-i">
          <div>Địa chỉ:</div>
          <div class="fnt-contact-info-v">
            <a href="#">{ADDRESS}</a>
          </div>
        </div>
      </div>
    </div>
    <!-- END: address -->
  </div>
</div>
<!-- END: dep -->
{FORM}
<!-- END: main -->