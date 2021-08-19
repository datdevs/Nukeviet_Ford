<!-- BEGIN: main -->
<div class="fnt-contact-form mt-5">
	<ul class="nav nav-tabs" id="fnt_form_tab_nav" role="tablist">
		<li class="nav-item" role="presentation">
			<a class="nav-link active" id="call-tab" data-bs-toggle="tab" href="#form-call" role="tab" aria-controls="form-call" aria-selected="true">
				<i class="fnt-icon">{FILE "./phone-rotary.svg"}</i>
				<span>Yêu cầu gọi lại</span>
			</a>
		</li>
		<li class="nav-item" role="presentation">
			<a class="nav-link" id="drive-test-tab" data-bs-toggle="tab" href="#form-drive-test" role="tab" aria-controls="form-drive-test" aria-selected="false">
				<i class="fnt-icon">{FILE "./wheel.svg"}</i>
				<span>Đăng ký lái thử</span>
			</a>
		</li>
		<li class="nav-item" role="presentation">
			<a class="nav-link" id="price-call-tab" data-bs-toggle="tab" href="#form-price-call" role="tab" aria-controls="form-price-call" aria-selected="false">
				<i class="fnt-icon">{FILE "./money-check.svg"}</i>
				<span>Chi phí lăn bánh</span>
			</a>
		</li>
		<li class="nav-item" role="presentation">
			<a class="nav-link" id="maintenance-tab" data-bs-toggle="tab" href="#form-maintenance" role="tab" aria-controls="form-maintenance" aria-selected="false">
				<i class="fnt-icon">{FILE "./car-fix.svg"}</i>
				<span>Đăng ký bảo dưỡng</span>
			</a>
		</li>
	</ul>
	<div class="tab-content px-3 py-3" id="fnt_form_tab_content">
		<div class="tab-pane fade show active" id="form-call" role="tabpanel" aria-labelledby="home-tab">
			<form method="post" action="{ACTION_FILE}" onsubmit="return nv_validForm(this);" novalidate>
				<div class="row g-3">
					<div class="col-12 d-none">
						<div class="form-floating">
							<input type="text" maxlength="255" class="form-control required" value="Yêu cầu gọi lại" id="ftitle" name="ftitle" placeholder="{LANG.title}" data-pattern="/^(.){3,}$/" onkeypress="nv_validErrorHidden(this);" />
							<label for="ftitle">{LANG.title}</label>
							<div class="invalid-tooltip">{LANG.error_title}</div>
						</div>
					</div>
					<div class="col-12 col-md-4">
						<div class="form-floating">
							<input type="text" maxlength="100" value="" id="fname" name="fname" class="form-control required" placeholder="{LANG.fullname}" data-pattern="/^(.){3,}$/" onkeypress="nv_validErrorHidden(this);" />
							<label for="fname">{LANG.fullname}</label>
							<div class="invalid-tooltip">{LANG.error_fullname}</div>
						</div>
					</div>
					<div class="col-12 col-md-4">
						<div class="form-floating">
							<input type="email" maxlength="60" value="" id="femail" name="femail" class="form-control required" placeholder="{LANG.email}" onkeypress="nv_validErrorHidden(this);" />					
							<label for="femail">{LANG.email}</label>
							<div class="invalid-tooltip">{LANG.error_email}</div>
						</div>
					</div>
					<div class="col-12 col-md-4">
						<div class="form-floating">
							<input type="text" maxlength="60" value="{CONTENT.fphone}" id="fphone" name="fphone" class="form-control required" placeholder="{LANG.phone}" onkeypress="nv_validErrorHidden(this);" />
							<label for="fphone">{LANG.phone}</label>
							<div class="invalid-tooltip">{LANG.error_number}</div>
						</div>
					</div>
					<div class="col-12">
						<div class="form-floating">
							<textarea id="fcon" name="fcon" class="form-control required" maxlength="1000" placeholder="{LANG.content}" onkeypress="nv_validErrorHidden(this);"></textarea>
							<label for="fcon">{LANG.content}</label>
							<div class="invalid-tooltip">{LANG.error_content}</div>
						</div>
					</div>
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
						<div class="text-center text-lg-end">
							<input type="hidden" name="checkss" value="{CHECKSS}" />
							<button type="submit" class="btn btn-primary fnt-contact-form-submit" name="btsend">
								<span class="fnt-spinner-circle"></span>
								<span>{LANG.sendcontact}</span>
								<i class="fnt-icon ms-2"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"> <path d="M13 17H17V14L22 18.5L17 23V20H13V17M20 4H4A2 2 0 0 0 2 6V18A2 2 0 0 0 4 20H11.35A5.8 5.8 0 0 1 11 18A6 6 0 0 1 22 14.69V6A2 2 0 0 0 20 4M20 8L12 13L4 8V6L12 11L20 6Z"/></svg></i>
							</button>
						</div>
					</div>
				</div>
			</form>
		</div>
		<div class="tab-pane fade" id="form-drive-test" role="tabpanel" aria-labelledby="profile-tab">
			<form method="post" action="{ACTION_FILE}" onsubmit="return nv_validForm(this);" novalidate>
				<div class="row g-3">
					<div class="col-12 d-none">
						<div class="form-floating">
							<input type="text" maxlength="255" class="form-control required" value="Đăng ký lái thử" id="ftitle" name="ftitle" placeholder="{LANG.title}" data-pattern="/^(.){3,}$/" onkeypress="nv_validErrorHidden(this);" />
							<label for="ftitle">{LANG.title}</label>
							<div class="invalid-tooltip">{LANG.error_title}</div>
						</div>
					</div>
					<div class="col-12 col-md-4">
						<div class="form-floating">
							<input type="text" maxlength="100" value="" id="fname" name="fname" class="form-control required" placeholder="{LANG.fullname}" data-pattern="/^(.){3,}$/" onkeypress="nv_validErrorHidden(this);" />
							<label for="fname">{LANG.fullname}</label>
							<div class="invalid-tooltip">{LANG.error_fullname}</div>
						</div>
					</div>
					<div class="col-12 col-md-4">
						<div class="form-floating">
							<input type="email" maxlength="60" value="" id="femail" name="femail" class="form-control required" placeholder="{LANG.email}" onkeypress="nv_validErrorHidden(this);" />					
							<label for="femail">{LANG.email}</label>
							<div class="invalid-tooltip">{LANG.error_email}</div>
						</div>
					</div>
					<div class="col-12 col-md-4">
						<div class="form-floating">
							<input type="text" maxlength="60" value="{CONTENT.fphone}" id="fphone" name="fphone" class="form-control required" placeholder="{LANG.phone}" onkeypress="nv_validErrorHidden(this);" />
							<label for="fphone">{LANG.phone}</label>
							<div class="invalid-tooltip">{LANG.error_number}</div>
						</div>
					</div>
					<!-- BEGIN: cars -->
					<div class="col-12 col-md-6">
						<div class="form-floating">
							<select class="form-select" id="car_register" name="car_register">
								<option disabled selected value="Chưa chọn"> -- chọn xe lái thử -- </option>
								<!-- BEGIN: loop -->
								<option value="{CAR_TITLE}">{CAR_TITLE}</option>
								<!-- END: loop -->
							</select>
							<label for="car_register">Chọn xe</label>
						</div>
					</div>
					<!-- END: cars -->
					<div class="col-12 col-md-6">
						<div class="form-floating">
							<input type="text" maxlength="50" value="{CONTENT.appointment_date}" id="appointment_date" name="appointment_date" class="form-control fnt-DatePicker" placeholder="Ngày hẹn" />
							<label for="appointment_date">Ngày hẹn</label>
						</div>
					</div>
					<div class="col-12">
						<div class="form-floating">
							<textarea id="fcon" name="fcon" class="form-control required" maxlength="1000" placeholder="{LANG.content}" onkeypress="nv_validErrorHidden(this);"></textarea>
							<label for="fcon">{LANG.content}</label>
							<div class="invalid-tooltip">{LANG.error_content}</div>
						</div>
					</div>
					<!-- BEGIN: captcha2 -->
					<div class="col-12">
						<div class="input-group">
							<span class="input-group-text fnt-btn-refresh-captcha" role="button" tabindex="0" onclick="change_captcha(this);" data-bs-toggle="tooltip" data-bs-trigger="hover" data-bs-placement="top" title="Thay mã mới">
								<img class="fnt-captcha-img" width="{GFX_WIDTH}" height="{GFX_HEIGHT}" alt="{LANG.captcha}" src="{NV_BASE_SITEURL}index.php?scaptcha=captcha&t={NV_CURRENTTIME}">
							</span>
							<input type="text" placeholder="{LANG.captcha}" maxlength="{NV_GFX_NUM}" value="" name="fcode" class="fcode required form-control" data-pattern="/^(.){{NV_GFX_NUM},{NV_GFX_NUM}}$/" onkeypress="nv_validErrorHidden(this);" />
							<div class="invalid-tooltip">{LANG.error_captcha}</div>
						</div>
					</div>
					<!-- END: captcha2 -->
					<div class="col-12">
						<div class="text-center text-lg-end">
							<input type="hidden" name="checkss" value="{CHECKSS}" />
							<button type="submit" class="btn btn-primary fnt-contact-form-submit" name="btsend">
								<span class="fnt-spinner-circle"></span>
								<span>{LANG.sendcontact}</span>
								<i class="fnt-icon ms-2"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"> <path d="M13 17H17V14L22 18.5L17 23V20H13V17M20 4H4A2 2 0 0 0 2 6V18A2 2 0 0 0 4 20H11.35A5.8 5.8 0 0 1 11 18A6 6 0 0 1 22 14.69V6A2 2 0 0 0 20 4M20 8L12 13L4 8V6L12 11L20 6Z"/></svg></i>
							</button>
						</div>
					</div>
				</div>
			</form>
		</div>
		<div class="tab-pane fade" id="form-price-call" role="tabpanel" aria-labelledby="contact-tab">
			<form method="post" action="{ACTION_FILE}" onsubmit="return nv_validForm(this);" novalidate>
				<div class="row g-3">
					<div class="col-12 d-none">
						<div class="form-floating">
							<input type="text" maxlength="255" class="form-control required" value="Chi phí lăn bánh" id="ftitle" name="ftitle" placeholder="{LANG.title}" data-pattern="/^(.){3,}$/" onkeypress="nv_validErrorHidden(this);" />
							<label for="ftitle">{LANG.title}</label>
							<div class="invalid-tooltip">{LANG.error_title}</div>
						</div>
					</div>
					<div class="col-12 col-md-6">
						<div class="form-floating">
							<input type="text" maxlength="100" value="" id="fname" name="fname" class="form-control required" placeholder="{LANG.fullname}" data-pattern="/^(.){3,}$/" onkeypress="nv_validErrorHidden(this);" />
							<label for="fname">{LANG.fullname}</label>
							<div class="invalid-tooltip">{LANG.error_fullname}</div>
						</div>
					</div>
					<div class="col-12 col-md-6">
						<div class="form-floating">
							<input type="email" maxlength="60" value="" id="femail" name="femail" class="form-control required" placeholder="{LANG.email}" onkeypress="nv_validErrorHidden(this);" />					
							<label for="femail">{LANG.email}</label>
							<div class="invalid-tooltip">{LANG.error_email}</div>
						</div>
					</div>
					<div class="col-12 col-md-6">
						<div class="form-floating">
							<input type="text" maxlength="60" value="{CONTENT.fphone}" id="fphone" name="fphone" class="form-control required" placeholder="{LANG.phone}" onkeypress="nv_validErrorHidden(this);" />
							<label for="fphone">{LANG.phone}</label>
							<div class="invalid-tooltip">{LANG.error_number}</div>
						</div>
					</div>
					<!-- BEGIN: cars2 -->
					<div class="col-12 col-md-6">
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
					<!-- END: cars2 -->
					<div class="col-12">
						<div class="form-floating">
							<textarea id="fcon" name="fcon" class="form-control required" maxlength="1000" placeholder="{LANG.content}" onkeypress="nv_validErrorHidden(this);"></textarea>
							<label for="fcon">{LANG.content}</label>
							<div class="invalid-tooltip">{LANG.error_content}</div>
						</div>
					</div>
					<!-- BEGIN: captcha3 -->
					<div class="col-12">
						<div class="input-group">
							<span class="input-group-text fnt-btn-refresh-captcha" role="button" tabindex="0" onclick="change_captcha(this);" data-bs-toggle="tooltip" data-bs-trigger="hover" data-bs-placement="top" title="Thay mã mới">
								<img class="fnt-captcha-img" width="{GFX_WIDTH}" height="{GFX_HEIGHT}" alt="{LANG.captcha}" src="{NV_BASE_SITEURL}index.php?scaptcha=captcha&t={NV_CURRENTTIME}">
							</span>
							<input type="text" placeholder="{LANG.captcha}" maxlength="{NV_GFX_NUM}" value="" name="fcode" class="fcode required form-control" data-pattern="/^(.){{NV_GFX_NUM},{NV_GFX_NUM}}$/" onkeypress="nv_validErrorHidden(this);" />
							<div class="invalid-tooltip">{LANG.error_captcha}</div>
						</div>
					</div>
					<!-- END: captcha3 -->
					<div class="col-12">
						<div class="text-center text-lg-end">
							<input type="hidden" name="checkss" value="{CHECKSS}" />
							<button type="submit" class="btn btn-primary fnt-contact-form-submit" name="btsend">
								<span class="fnt-spinner-circle"></span>
								<span>{LANG.sendcontact}</span>
								<i class="fnt-icon ms-2"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"> <path d="M13 17H17V14L22 18.5L17 23V20H13V17M20 4H4A2 2 0 0 0 2 6V18A2 2 0 0 0 4 20H11.35A5.8 5.8 0 0 1 11 18A6 6 0 0 1 22 14.69V6A2 2 0 0 0 20 4M20 8L12 13L4 8V6L12 11L20 6Z"/></svg></i>
							</button>
						</div>
					</div>
				</div>
			</form>
		</div>
		<div class="tab-pane fade" id="form-maintenance" role="tabpanel" aria-labelledby="contact-tab">
			<form method="post" action="{ACTION_FILE}" onsubmit="return nv_validForm(this);" novalidate>
				<div class="row g-3">
					<div class="col-12 d-none">
						<div class="form-floating">
							<input type="text" maxlength="255" class="form-control required" value="Đăng ký bảo dưỡng" id="ftitle" name="ftitle" placeholder="{LANG.title}" data-pattern="/^(.){3,}$/" onkeypress="nv_validErrorHidden(this);" />
							<label for="ftitle">{LANG.title}</label>
							<div class="invalid-tooltip">{LANG.error_title}</div>
						</div>
					</div>
					<div class="col-12 col-md-4">
						<div class="form-floating">
							<input type="text" maxlength="100" value="" id="fname" name="fname" class="form-control required" placeholder="{LANG.fullname}" data-pattern="/^(.){3,}$/" onkeypress="nv_validErrorHidden(this);" />
							<label for="fname">{LANG.fullname}</label>
							<div class="invalid-tooltip">{LANG.error_fullname}</div>
						</div>
					</div>
					<div class="col-12 col-md-4">
						<div class="form-floating">
							<input type="email" maxlength="60" value="" id="femail" name="femail" class="form-control required" placeholder="{LANG.email}" onkeypress="nv_validErrorHidden(this);" />					
							<label for="femail">{LANG.email}</label>
							<div class="invalid-tooltip">{LANG.error_email}</div>
						</div>
					</div>
					<div class="col-12 col-md-4">
						<div class="form-floating">
							<input type="text" maxlength="60" value="{CONTENT.fphone}" id="fphone" name="fphone" class="form-control required" placeholder="{LANG.phone}" onkeypress="nv_validErrorHidden(this);" />
							<label for="fphone">{LANG.phone}</label>
							<div class="invalid-tooltip">{LANG.error_number}</div>
						</div>
					</div>
					<div class="col-12 col-md-6">
						<div class="form-floating">
							<input type="text" maxlength="250" id="car_register" name="car_register" class="form-control required" placeholder="Xe cần bảo dưỡng" onkeypress="nv_validErrorHidden(this);" />
							<label for="car_register">Xe cần bảo dưỡng</label>
							<div class="invalid-tooltip">Vui lòng thêm xe cần bảo dưỡng</div>
						</div>
					</div>
					<div class="col-12 col-md-6">
						<div class="form-floating">
							<input type="text" maxlength="50" value="{CONTENT.appointment_date}" id="appointment_date" name="appointment_date" class="form-control fnt-DatePicker" placeholder="Ngày hẹn" />
							<label for="appointment_date">Ngày hẹn</label>
						</div>
					</div>
					<div class="col-12">
						<div class="form-floating">
							<textarea id="fcon" name="fcon" class="form-control required" maxlength="1000" placeholder="{LANG.content}" onkeypress="nv_validErrorHidden(this);"></textarea>
							<label for="fcon">{LANG.content}</label>
							<div class="invalid-tooltip">{LANG.error_content}</div>
						</div>
					</div>
					<!-- BEGIN: captcha4 -->
					<div class="col-12">
						<div class="input-group">
							<span class="input-group-text fnt-btn-refresh-captcha" role="button" tabindex="0" onclick="change_captcha(this);" data-bs-toggle="tooltip" data-bs-trigger="hover" data-bs-placement="top" title="Thay mã mới">
								<img class="fnt-captcha-img" width="{GFX_WIDTH}" height="{GFX_HEIGHT}" alt="{LANG.captcha}" src="{NV_BASE_SITEURL}index.php?scaptcha=captcha&t={NV_CURRENTTIME}">
							</span>
							<input type="text" placeholder="{LANG.captcha}" maxlength="{NV_GFX_NUM}" value="" name="fcode" class="fcode required form-control" data-pattern="/^(.){{NV_GFX_NUM},{NV_GFX_NUM}}$/" onkeypress="nv_validErrorHidden(this);" />
							<div class="invalid-tooltip">{LANG.error_captcha}</div>
						</div>
					</div>
					<!-- END: captcha4 -->
					<div class="col-12">
						<div class="text-center text-lg-end">
							<input type="hidden" name="checkss" value="{CHECKSS}" />
							<button type="submit" class="btn btn-primary fnt-contact-form-submit" name="btsend">
								<span class="fnt-spinner-circle"></span>
								<span>{LANG.sendcontact}</span>
								<i class="fnt-icon ms-2"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 24 24"> <path d="M13 17H17V14L22 18.5L17 23V20H13V17M20 4H4A2 2 0 0 0 2 6V18A2 2 0 0 0 4 20H11.35A5.8 5.8 0 0 1 11 18A6 6 0 0 1 22 14.69V6A2 2 0 0 0 20 4M20 8L12 13L4 8V6L12 11L20 6Z"/></svg></i>
							</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
<div class="fnt-contact-form-alert alert fade" role="alert"></div>
<!-- END: main -->