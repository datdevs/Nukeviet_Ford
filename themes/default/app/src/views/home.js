/** Styles */
import '../scss/views/home.scss'

/** JS */
import Swiper, { Autoplay, Lazy, Navigation, EffectFade, Pagination } from 'swiper'

Swiper.use([Autoplay, Navigation, Lazy, EffectFade, Pagination])

const fntHomeSlider = new Swiper('.fnt-swiper-slider', {
  lazy: true,
  loop: true,
  effect: 'fade',
  speed: 500,
  autoplay: {
    delay: 8000,
  },
  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },
  breakpoints: {
    992: {
      pagination: {
        el: '.swiper-pagination',
        clickable: true,
      },
    },
  },
})

// const jQuery = window.jQuery

// var myModal = document.getElementById('myModal')
// var myInput = document.getElementById('myInput')

// myModal.addEventListener('shown.bs.modal', function () {
//   myInput.focus()
// })

// const fnt_web_function_link = document.getElementsByClassName('fnt-web-function-link')

// const fnt_web_function_link_list = [].slice.call(document.getElementsByClassName('fnt-web-function-link'))
// const fnt_contact_modal = document.getElementById('fnt-contact-form-block')
// const form_content = document.getElementById('block_get_cs')

// fnt_contact_modal.addEventListener('hidden.bs.modal', function () {
//   form_content.innerHTML = null
// })

// fnt_web_function_link_list.map(function (fnt_web_function_link) {
//   fnt_web_function_link.addEventListener('click', function (event) {
//     event.preventDefault()
//     const form_name = this.getAttribute('data-form')
//     const module_name = fnt_contact_modal.getAttribute('data-module')
//     const get_cs = form_content.getAttribute('data-cs')
//     var script = document.createElement('script')
//     script.type = 'text/javascript'
//     script.src = '/themes/default/app/build/block_contact_form.js'

//     jQuery.ajax({
//       type: 'POST',
//       cache: !1,
//       url: `${nv_base_siteurl}index.php?${nv_lang_variable}=${nv_lang_data}&${nv_name_variable}=${module_name}`,
//       data: `loadForm=${form_name}&checkss=${get_cs}`,
//       dataType: 'html',
//       success: function (a) {
//         form_content.innerHTML = a
//         form_content.appendChild(script)
//         change_captcha()
//       },
//     })
//     return false
//   })
//   return false
// })

// console.log(fnt_web_function_link)

// fnt_web_function_link.addEventListener('click', function (event) {
//   event.preventDefault()
//   console.log(this)
//   return false
// })

// fnt_web_function_link.forEach(e => {
//   e.addEventListener('click', function(event) {
//     event.preventDefault()
//     console.log(e)
//     return false
//   })
// })

// jQuery(function () {
//   var a = jQuery('#contactButton')
//   if (a) {
//     var b = jQuery('.ctb', a),
//       c = jQuery('.panel', a),
//       d = function () {
//         c.hide()
//         b.removeClass('fs').show()
//       },
//       e = jQuery('[data-cs]', a)
//     jQuery(document).on('keydown', function (a) {
//       27 === a.keyCode && b.is('.fs') && d()
//     })
//     jQuery(document).on('click', function () {
//       b.is('.fs') && d()
//     })
//     c.on('click', function (a) {
//       a.stopPropagation()
//     })
//     jQuery('.close', a).on('click', function () {
//       d()
//     })
//     b.on('click', function () {
//       return b.is('.ld')
//         ? (b.addClass('fs').hide(), c.fadeIn(), !1)
//         : (jQuery.ajax({
//             type: 'POST',
//             cache: !1,
//             url: nv_base_siteurl + 'index.php?' + nv_lang_variable + '=' + nv_lang_data + '&' + nv_name_variable + '=' + b.attr('data-module'),
//             data: 'loadForm=drive_test&checkss=' + e.data('cs'),
//             dataType: 'html',
//             success: function (a) {
//               e.html(a)
//               b.addClass('ld fs').hide()
//               c.fadeIn()
//               change_captcha()
//             },
//           }),
//           !1)
//     })
//   }
// })
