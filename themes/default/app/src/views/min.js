const jQuery = window.jQuery

const fnt_web_function_link_list = [].slice.call(document.getElementsByClassName('fnt-web-function-link'))
const fnt_contact_modal = document.getElementById('fnt-contact-form-block')
const form_content = document.getElementById('block_get_cs')

fnt_contact_modal.addEventListener('hidden.bs.modal', function () {
  form_content.innerHTML = null
})

fnt_web_function_link_list.map(function (fnt_web_function_link) {
  fnt_web_function_link.addEventListener('click', function (event) {
    event.preventDefault()
    const form_name = this.getAttribute('data-form')
    const module_name = fnt_contact_modal.getAttribute('data-module')
    const get_cs = form_content.getAttribute('data-cs')
    var script = document.createElement('script')
    script.type = 'text/javascript'
    script.src = '/themes/default/app/build/block_contact_form.js'

    jQuery.ajax({
      type: 'POST',
      cache: !1,
      url: `${nv_base_siteurl}index.php?${nv_lang_variable}=${nv_lang_data}&${nv_name_variable}=${module_name}`,
      data: `loadForm=${form_name}&checkss=${get_cs}`,
      dataType: 'html',
      success: function (a) {
        form_content.innerHTML = a
        form_content.appendChild(script)
        change_captcha()
      },
    })
    return false
  })
  return false
})