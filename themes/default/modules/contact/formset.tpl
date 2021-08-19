<!-- BEGIN: main -->
<style>
.tooltip{position:absolute;z-index:1070;display:block;margin:0;font-family:var(--bs-font-sans-serif);font-style:normal;font-weight:400;line-height:1.5;text-align:left;text-align:start;text-decoration:none;text-shadow:none;text-transform:none;letter-spacing:normal;word-break:normal;word-spacing:normal;white-space:normal;line-break:auto;font-size:.875rem;word-wrap:break-word;opacity:0}.tooltip.show{opacity:.7}.tooltip .tooltip-arrow{position:absolute;display:block;width:.8rem;height:.4rem}.tooltip .tooltip-arrow:before{position:absolute;content:"";border-color:transparent;border-style:solid}.bs-tooltip-auto[data-popper-placement^=top],.bs-tooltip-top{padding:.4rem 0}.bs-tooltip-auto[data-popper-placement^=top] .tooltip-arrow,.bs-tooltip-top .tooltip-arrow{bottom:0}.bs-tooltip-auto[data-popper-placement^=top] .tooltip-arrow:before,.bs-tooltip-top .tooltip-arrow:before{top:-1px;border-width:.4rem .4rem 0;border-top-color:#000}.bs-tooltip-auto[data-popper-placement^=right],.bs-tooltip-end{padding:0 .4rem}.bs-tooltip-auto[data-popper-placement^=right] .tooltip-arrow,.bs-tooltip-end .tooltip-arrow{left:0;width:.4rem;height:.8rem}.bs-tooltip-auto[data-popper-placement^=right] .tooltip-arrow:before,.bs-tooltip-end .tooltip-arrow:before{right:-1px;border-width:.4rem .4rem .4rem 0;border-right-color:#000}.bs-tooltip-auto[data-popper-placement^=bottom],.bs-tooltip-bottom{padding:.4rem 0}.bs-tooltip-auto[data-popper-placement^=bottom] .tooltip-arrow,.bs-tooltip-bottom .tooltip-arrow{top:0}.bs-tooltip-auto[data-popper-placement^=bottom] .tooltip-arrow:before,.bs-tooltip-bottom .tooltip-arrow:before{bottom:-1px;border-width:0 .4rem .4rem;border-bottom-color:#000}.bs-tooltip-auto[data-popper-placement^=left],.bs-tooltip-start{padding:0 .4rem}.bs-tooltip-auto[data-popper-placement^=left] .tooltip-arrow,.bs-tooltip-start .tooltip-arrow{right:0;width:.4rem;height:.8rem}.bs-tooltip-auto[data-popper-placement^=left] .tooltip-arrow:before,.bs-tooltip-start .tooltip-arrow:before{left:-1px;border-width:.4rem 0 .4rem .4rem;border-left-color:#000}.tooltip-inner{max-width:200px;padding:.25rem .5rem;color:#fff;text-align:center;background-color:#000;border-radius:2px}.dp-modal{background:hsla(0,0%,100%,.75);bottom:0;left:0;position:fixed;right:0;top:0;z-index:1060}.dp{background:#fff;border-radius:2px;-webkit-box-shadow:2px 2px 16px rgba(0,0,0,.25);box-shadow:2px 2px 16px rgba(0,0,0,.25);line-height:1.4;max-height:400px;overflow:hidden;padding-top:6px;position:relative;-webkit-tap-highlight-color:transparent;z-index:1000}.dp:before{background:#0276b3;background:-webkit-gradient(linear,right top,left top,from(#0276b3),to(#8aefc8));background:-o-linear-gradient(right,#0276b3 0,#8aefc8 100%);background:linear-gradient(-90deg,#0276b3,#8aefc8);content:" ";height:6px;left:0;position:absolute;right:0;top:0}.dp-permanent .dp{border:1px solid #eee;-webkit-box-shadow:none;box-shadow:none;padding-top:0}.dp-permanent .dp:before{display:none}.dp-cal{min-height:300px}.dp-below{position:absolute}.dp-below,.dp-permanent{font-size:.8em;max-width:100vw;width:400px}.dp-permanent{position:relative}.dp-permanent .dp{z-index:0}.dp-modal .dp{-webkit-animation:slide-up .3s forwards;animation:slide-up .3s forwards;left:50%;max-width:600px;position:absolute;top:50%;-webkit-transform:translate(-50%,-50%);-ms-transform:translate(-50%,-50%);transform:translate(-50%,-50%);width:calc(100% - 4em)}.dp-months{padding:24px}.dp-years{-webkit-box-sizing:border-box;box-sizing:border-box;max-height:400px;overflow:auto!important;padding:8px 0}.dp-cal-month,.dp-cal-year,.dp-day,.dp-month,.dp-year{background:transparent;border:0;border-radius:0;-webkit-box-sizing:border-box;box-sizing:border-box;color:#3b404d;position:relative;text-align:center;text-decoration:none}.dp-cal-header{background:#f5f5f5;padding:1rem 0;position:relative;text-align:center}.dp-next,.dp-prev{background:transparent;border:0;border-radius:2px;color:#777;height:30px;margin-top:-15px;overflow:hidden;position:absolute;top:50%;width:30px}.dp-next:focus,.dp-next:hover,.dp-prev:focus,.dp-prev:hover{color:inherit;outline:none}.dp-prev{left:24px}.dp-next{right:24px}.dp-next:before,.dp-prev:before{border:2px solid;content:"";display:inline-block;height:10px;margin:9px 0 40px 4px;-webkit-transform:rotate(-45deg);-ms-transform:rotate(-45deg);transform:rotate(-45deg);width:10px}.dp-prev:before{border-bottom:0;border-right:0}.dp-next:before{border-left:0;border-top:0;margin-left:0;margin-right:4px}.dp-cal-month,.dp-cal-year{display:inline-block;font-size:1.5rem;font-weight:500;outline:none;padding:.5rem .25rem}.dp-cal-footer{background:#f5f5f5;display:-webkit-box;display:-ms-flexbox;display:flex;text-align:center}.dp-day-today:after{border-color:#03315f #03315f transparent transparent;border-style:solid;border-width:7px;content:"";height:0;position:absolute;right:0;top:0;width:0}.dp-clear,.dp-close,.dp-today{background:transparent;border:0;-webkit-box-sizing:border-box;box-sizing:border-box;color:inherit;display:inline-block;-webkit-box-flex:1;-ms-flex:1;flex:1;padding:8px;text-decoration:none}.dp-permanent .dp-clear,.dp-permanent .dp-close{display:none}.dp-cal-month:active,.dp-cal-year:active,.dp-clear:active,.dp-close:active,.dp-next:active,.dp-prev:active,.dp-today:active{background:#75bcfc;color:#fff}@media screen and (min-device-width:1200px){.dp-clear:focus,.dp-clear:hover,.dp-close:focus,.dp-close:hover,.dp-next:focus,.dp-next:hover,.dp-prev:focus,.dp-prev:hover,.dp-today:focus,.dp-today:hover{background:#75bcfc;color:#fff}}.dp-col-header,.dp-day{display:inline-block;padding:8px;text-align:center;width:14.28571429%}.dp-col-header{color:#aaa;font-size:.8em;font-weight:300;padding:8px 0;text-transform:uppercase}.dp-month{display:inline-block;padding:8px;width:33%}.dp-year{display:block;padding:8px 40px;width:100%}.dp-edge-day{color:#aaa}.dp-current,.dp-current:focus,.dp-day:focus,.dp-day:hover,.dp-month:focus,.dp-month:hover,.dp-year:focus,.dp-year:hover{background:#75bcfc;color:#fff;outline:none}.dp-selected,.dp-selected:focus,.dp-selected:hover{background:#0276b3;color:#fff}.dp-day-disabled{background:transparent;color:#ddd}.dp-day-disabled:focus,.dp-day-disabled:hover{background:transparent;color:#ddd;cursor:not-allowed}.dp-focuser{left:50%;position:absolute;top:50%;z-index:0}@media (max-height:480px),(max-width:480px){.dp-modal .dp{font-size:.9em;width:auto;width:100%}.dp-day,.dp-day-of-week{padding:8px}}@-webkit-keyframes slide-up{0%{-webkit-transform:translate(-50%,100%);transform:translate(-50%,100%)}to{-webkit-transform:translate(-50%,-50%);transform:translate(-50%,-50%)}}@keyframes slide-up{0%{-webkit-transform:translate(-50%,100%);transform:translate(-50%,100%)}to{-webkit-transform:translate(-50%,-50%);transform:translate(-50%,-50%)}}.inner-alert{-webkit-box-align:center;-ms-flex-align:center;align-items:center;display:-webkit-box;display:-ms-flexbox;display:flex;line-height:1}.inner-alert .fnt-icon{font-size:1rem;margin-right:8px}.fnt-spinner-circle{-webkit-animation:spinner-circle .8s linear infinite;animation:spinner-circle .8s linear infinite;border-radius:50%;border:3px solid #fff;border-right-color:hsla(0,0%,100%,.3);height:1em;-webkit-transition:all .3s;-o-transition:all .3s;transition:all .3s;width:1em}.fnt-contact-form-submit{-webkit-box-align:center;-ms-flex-align:center;align-items:center;display:-webkit-inline-box;display:-ms-inline-flexbox;display:inline-flex;padding-left:3rem;padding-right:3rem;position:relative}.fnt-contact-form-submit .fnt-spinner-circle{display:none;font-size:18px;left:50%;margin-left:-9px;margin-top:-9px;position:absolute;top:50%}.fnt-contact-form-submit.loading i,.fnt-contact-form-submit.loading span:not(.fnt-spinner-circle){opacity:0}.fnt-contact-form-submit.loading .fnt-spinner-circle{display:unset}.fnt-contact-form-alert{font-size:.875rem;left:50%;margin:0;pointer-events:none;position:fixed;top:calc(var(--header-height) + 10px);-webkit-transform:translateX(-50%);-ms-transform:translateX(-50%);transform:translateX(-50%);z-index:2000}@media (min-width:768px){.fnt-contact-form-alert{--header-height:80px}}@-webkit-keyframes spinner-circle{to{-webkit-transform:rotate(1turn);transform:rotate(1turn)}}@keyframes spinner-circle{to{-webkit-transform:rotate(1turn);transform:rotate(1turn)}}
</style>
<div class="modal-header">
	<h5 class="modal-title" id="fnt-contact-form-label">{TITLE}</h5>
	<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
</div>
<div class="modal-body">
	<div id="fnt_contact_form">
		<form method="post" action="{ACTION_FILE}" onsubmit="return nv_validForm(this);" novalidate>
			<div class="row g-3">
				<div class="col-12 d-none">
					<div class="form-floating">
						<input type="text" maxlength="255" class="form-control required" value="{TITLE}" id="ftitle" name="ftitle" placeholder="{LANG.title}" data-pattern="/^(.){3,}$/" onkeypress="nv_validErrorHidden(this);" />
						<label for="ftitle">{LANG.title}</label>
						<div class="invalid-tooltip">{LANG.error_title}</div>
					</div>
				</div>
				<div class="col-12">
					<div class="form-floating">
						<input type="text" maxlength="100" value="" id="fname" name="fname" class="form-control required" placeholder="{LANG.fullname}" data-pattern="/^(.){3,}$/" onkeypress="nv_validErrorHidden(this);" />
						<label for="fname">{LANG.fullname}</label>
						<div class="invalid-tooltip">{LANG.error_fullname}</div>
					</div>
				</div>
				<div class="col-12">
					<div class="form-floating">
						<input type="email" maxlength="60" value="" id="femail" name="femail" class="form-control required" placeholder="{LANG.email}" onkeypress="nv_validErrorHidden(this);" />
						<label for="femail">{LANG.email}</label>
						<div class="invalid-tooltip">{LANG.error_email}</div>
					</div>
				</div>
				<div class="col-12">
					<div class="form-floating">
						<input type="text" maxlength="60" value="{CONTENT.fphone}" id="fphone" name="fphone" class="form-control required" placeholder="{LANG.phone}" onkeypress="nv_validErrorHidden(this);" />
						<label for="fphone">{LANG.phone}</label>
						<div class="invalid-tooltip">{LANG.error_number}</div>
					</div>
				</div>
				<!-- BEGIN: address -->
				<div class="col-12">
					<div class="form-floating">
						<input type="text" maxlength="60" value="{CONTENT.faddress}" id="faddress" name="faddress" class="form-control required" placeholder="{LANG.address}" onkeypress="nv_validErrorHidden(this);" />
						<label for="fphone">{LANG.address}</label>
						<div class="invalid-tooltip">{LANG.error_address}</div>
					</div>
				</div>
				<!-- END: address -->
				<!-- BEGIN: cars -->
				<div class="col-12">
					<div class="form-floating">
						<select class="form-select" id="car_register" name="car_register">
							<option disabled selected value="Chưa chọn"> -- chọn xe -- </option>
							<!-- BEGIN: loop -->
							<option value="{CAR_TITLE}">{CAR_TITLE}</option>
							<!-- END: loop -->
						</select>
						<label for="car_register">Chọn xe</label>
					</div>
				</div>
				<!-- END: cars -->
				<!-- BEGIN: cars2 -->
				<div class="col-12">
					<div class="form-floating">
						<input type="text" maxlength="250" id="car_register" name="car_register" class="form-control required" placeholder="Xe cần bảo dưỡng" onkeypress="nv_validErrorHidden(this);" />
						<label for="car_register">Xe cần bảo dưỡng</label>
						<div class="invalid-tooltip">Vui lòng thêm xe cần bảo dưỡng</div>
					</div>
				</div>
				<!-- END: cars2 -->
				<!-- BEGIN: appointment_date -->
				<div class="col-12">
					<div class="form-floating">
						<input type="text" maxlength="50" value="{CONTENT.appointment_date}" id="appointment_date" name="appointment_date" class="form-control fnt-DatePicker" placeholder="Ngày hẹn" />
						<label for="appointment_date">Ngày hẹn</label>
					</div>
				</div>
				<!-- END: appointment_date -->
				<!-- BEGIN: note1 -->
				<div class="col-12 d-none">
					<div class="form-floating">
						<textarea id="fcon" name="fcon" class="form-control required" maxlength="1000" placeholder="{LANG.content}" onkeypress="nv_validErrorHidden(this);">...Không có nội dung mô tả...</textarea>
						<label for="fcon">{LANG.content}</label>
						<div class="invalid-tooltip">{LANG.error_content}</div>
					</div>
				</div>
				<!-- END: note1 -->
				<!-- BEGIN: note2 -->
				<div class="col-12">
					<div class="form-floating">
						<textarea id="fcon" name="fcon" class="form-control required" maxlength="1000" placeholder="{LANG.content}" onkeypress="nv_validErrorHidden(this);"></textarea>
						<label for="fcon">Tình trạng xe</label>
						<div class="invalid-tooltip">Vui lòng thêm tình trạng xe</div>
					</div>
				</div>
				<!-- END: note2 -->
				<!-- BEGIN: captcha1 -->
				<div class="col-12">
					<div class="input-group">
						<span class="input-group-text fnt-btn-refresh-captcha" role="button" tabindex="0" onclick="change_captcha(this);" data-bs-toggle="tooltip" data-bs-trigger="hover" data-bs-placement="top" title="Thay mã mới">
							<img class="fnt-captcha-img" width="{GFX_WIDTH}" height="{GFX_HEIGHT}" alt="{LANG.captcha}" src="{NV_BASE_SITEURL}index.php?scaptcha=captcha&t={NV_CURRENTTIME}">
						</span>
						<input type="text" placeholder="{LANG.captcha}" maxlength="{NV_GFX_NUM}" value="" name="fcode" class="fcode required form-control" data-pattern="/^(.){{NV_GFX_NUM},{NV_GFX_NUM}}$/" onkeypress="nv_validErrorHidden(this);" />
						<div class="invalid-tooltip">{LANG.error_captcha}</div>
					</div>
				</div>
				<!-- END: captcha1 -->
				<div class="col-12">
					<div class="text-center">
						<input type="hidden" name="checkss" value="{CHECKSS}" />
						<button type="submit" class="btn btn-primary fnt-contact-form-submit" name="btsend">
							<span class="fnt-spinner-circle"></span>
							<span>{LANG.sendcontact}</span>
							<i class="fnt-icon ms-2"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24">
									<path d="M13 17H17V14L22 18.5L17 23V20H13V17M20 4H4A2 2 0 0 0 2 6V18A2 2 0 0 0 4 20H11.35A5.8 5.8 0 0 1 11 18A6 6 0 0 1 22 14.69V6A2 2 0 0 0 20 4M20 8L12 13L4 8V6L12 11L20 6Z" /></svg></i>
						</button>
					</div>
				</div>
			</div>
		</form>
	</div>
	<div class="fnt-contact-form-alert alert fade" role="alert"></div>
</div>
<!-- END: main -->