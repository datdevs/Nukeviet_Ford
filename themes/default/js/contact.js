function nv_validReset(e){e.classList.remove("is-invalid"),$(e)[0].reset()}function nv_validErrorShow(e){e.classList.add("is-invalid")}function nv_validErrorHidden(e){e.classList.remove("is-invalid")}function nv_validCheck(e){var t=$(e).attr("data-pattern"),a=$(e).val();if("email"==$(e).prop("type")&&!nv_mailfilter.test(a))return!1;if(void 0===t||""==t){if(""==a)return!1}else if(!((e=t.match(/^\/(.*?)\/([gim]*)$/))?new RegExp(e[1],e[2]):new RegExp(t)).test(a))return!1;return!0}function nv_validForm(t){$(".is-invalid",t).removeClass("is-invalid");const a=$(".fnt-contact-form-alert");var e=0;return $(t).find(".required").each(function(){if($(this).val(trim(strip_tags($(this).val()))),!nv_validCheck(this))return e++,$(this).removeClass("is-invalid"),nv_validErrorShow(this)}),e||($(t).find("[type='submit']").prop("disabled",!0),$.ajax({type:$(t).prop("method"),cache:!1,url:$(t).prop("action"),data:$(t).serialize(),dataType:"json",success:function(e){change_captcha(".fnt-btn-refresh-captcha"),"error"==e.status&&""!=e.input?($(t).find("[name="+e.input+"]").each(function(){nv_validErrorShow(this)}),setTimeout(function(){$(t).find("[type='submit']").removeClass('loading').prop("disabled",!1)},1e3),nv_is_recaptcha&&change_captcha()):($("input,select,button,textarea",t).prop("disabled",!0),$(t).find("[type='submit']").addClass('loading'),"error"==e.status?a.html(e.mess).removeClass("alert-success").addClass("alert-danger show"):a.html(e.mess).removeClass("alert-danger").addClass("alert-success show"),setTimeout(function(){a.html("").removeClass("alert-danger alert-success show"),$("input,select,button,textarea",t).not(".disabled").prop("disabled",!1),$(t).find("[type='submit']").removeClass('loading'),nv_validReset(t),nv_is_recaptcha&&change_captcha()},5e3))}})),!1}