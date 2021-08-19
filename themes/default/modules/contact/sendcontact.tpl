<!-- BEGIN: main -->
<h1>{TITLE}</h1>
<!-- BEGIN: car -->
<p>Xe đăng ký: <strong>{CAR}</strong></p>
<!-- END: car -->
<!-- BEGIN: date -->
<p>Ngày hẹn: <strong>{DATE}</strong></p>
<!-- END: date -->
<p>Nội dung: {CONTENT}</p>
<!-- BEGIN: sendinfo -->
<span>----------------------------------------</span>
<h2>{SITE_NAME}</h2>
<h3>Website: <a href="{SITE_URL}">{SITE_URL}</a></h3>
<h3>{LANG.sendinfo2}:</h3>
<div>
  <div style="margin-bottom:10px">{LANG.fullname}: <strong>{FULLNAME}</strong></div>
  <div style="margin-bottom:10px">{LANG.email}: <strong>{EMAIL}</strong></div>
  <!-- BEGIN: phone -->
  <div style="margin-bottom:10px">{LANG.phone}: <strong>{PHONE}</strong></div>
  <!-- END: phone -->
  <!-- BEGIN: address -->
  <div style="margin-bottom:10px">Địa chỉ: <strong>{ADDRESS}</strong></div>
  <!-- END: address -->
  <div style="margin-bottom:10px">IP: <strong>{IP}</strong></div>
</div>
<!-- END: sendinfo -->
<!-- END: main -->