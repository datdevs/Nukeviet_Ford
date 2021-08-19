/** Styles */
import '../scss/global.scss'

/** JS */
import 'lazysizes'
import 'lazysizes/plugins/bgset/ls.bgset'
import 'lazysizes/plugins/native-loading/ls.native-loading'

import 'bootstrap/js/src/alert'
import 'bootstrap/js/src/collapse'
import 'bootstrap/js/src/modal'
import 'bootstrap/js/src/tab'

const jQuery = window.jQuery

// window.modal = Modal

jQuery(function () {
  // Modify all empty link
  jQuery('a[href="#"], a[href=""]').on('click', function (e) {
    e.preventDefault()
  })

  const header = jQuery('.fnt-header')
  const menu_hamburger = jQuery('#fnt-menu-hamburger')

  jQuery(document).on('scroll', function () {
    if (jQuery(this).scrollTop() > header.outerHeight()) {
      header.css({
        top: `-${header.find('.fnt-ontop-head').outerHeight()}px`,
      })
    } else {
      header.css({
        top: '',
      })
    }
  })

  menu_hamburger.click(function () {
    jQuery(this).toggleClass('is-active')
    jQuery('html').toggleClass('fnt-menu-mobile-open masking')
  })

  jQuery('.fnt-product-item').click(function () {
    window.location.href = jQuery(this).attr('data-url')
  })

  //Search form
  jQuery('.fnt-search-form .fnt-btn-search').on('click', function () {
    if ('n' == jQuery(this).attr('data-click')) {
      return !1
    }
    jQuery(this).attr('data-click', 'n')
    var a = jQuery('.fnt-search-form input'),
      c = a.attr('maxlength'),
      b = strip_tags(a.val()),
      d = jQuery(this).attr('data-minlength'),
      e = jQuery('.fnt-search-form .invalid-tooltip')
    a.parent().removeClass('has-error')
    a.removeClass('is-invalid')
    e.text('')
    if (b === '') {
      a.parent().addClass('has-error')
      a.addClass('is-invalid')
      a.val(b).focus()
      jQuery(this).attr('data-click', 'y')
      e.text('Vui lòng nhập từ khóa cần tìm kiếm')
    } else if (b.length < d || b.length > c) {
      a.parent().addClass('has-error')
      a.addClass('is-invalid')
      a.val(b).focus()
      jQuery(this).attr('data-click', 'y')
      e.text(`Từ khóa cần tìm tối thiểu ${d} ký tự và tối đa ${c} ký tự`)
    } else {
      window.location.href = jQuery(this).attr('data-url') + rawurlencode(b)
    }
    // '' == b || b.length < d || b.length > c ? (a.parent().addClass('has-error'), a.addClass('is-invalid'), a.val(b).focus(), jQuery(this).attr('data-click', 'y')) : (window.location.href = jQuery(this).attr('data-url') + rawurlencode(b))
    return !1
  })
  jQuery('.fnt-search-form input').on('keypress', function (a) {
    jQuery(this).parent().removeClass('has-error')
    jQuery(this).removeClass('is-invalid')
    jQuery(this).parent().find('.invalid-tooltip').text('')
    13 != a.which || a.shiftKey || (a.preventDefault(), jQuery('.fnt-search-form .fnt-btn-search').trigger('click'))
  })

  // maxLength for textarea
  jQuery('textarea').on('input propertychange', function () {
    var a = jQuery(this).prop('maxLength')
    if (!a || 'number' != typeof a) {
      var a = jQuery(this).attr('maxlength'),
        b = jQuery(this).val()
      b.length > a && jQuery(this).val(b.substr(0, a))
    }
  })

  if (jQuery(document).width() >= 992) {
    jQuery('.fnt-menu-wrapper .navbar-expand-lg .dropdown').hover(
      function () {
        jQuery('html').addClass('masking')
      },
      function () {
        jQuery('html').removeClass('masking')
      }
    )
  }
})

// Load Social script - lasest
jQuery(window).on('load', function () {
  // const wrapper = jQuery('.fnt-wrapper')
  const header = jQuery('.fnt-header')
  // const menuNav = jQuery('.fnt-menu-wrapper .navbar')

  // if (jQuery(document).width() < 992) {
  //   menuNav.css({
  //     height: `calc(100vh - ${header.outerHeight()}px)`,
  //   })
  // }

  // wrapper.css({
  //   'padding-top': `${header.outerHeight()}px`,
  // })

  if (jQuery(this).scrollTop() > header.outerHeight()) {
    header.css({
      top: `-${header.find('.fnt-ontop-head').outerHeight()}px`,
    })
  } else {
    header.css({
      top: '',
    })
  }

  jQuery('.fnt-copyright-year').text(new Date().getFullYear())

  if (typeof nv_is_recaptcha != 'undefined' && nv_is_recaptcha && nv_recaptcha_elements.length > 0) {
    var a = document.createElement('script')
    a.type = 'text/javascript'
    a.async = !0
    a.src = 'https://www.google.com/recaptcha/api.js?hl=' + nv_lang_interface + '&onload=reCaptchaLoadCallback&render=explicit'
    var b = document.getElementsByTagName('script')[0]
    b.parentNode.insertBefore(a, b)
  }
})