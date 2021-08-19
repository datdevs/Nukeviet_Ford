/** Styles */
import './scss/app.scss'

/** JS */
import 'lazysizes'
import 'lazysizes/plugins/bgset/ls.bgset'
import 'lazysizes/plugins/native-loading/ls.native-loading'

import Swiper, { Autoplay, Lazy, Navigation, Thumbs, EffectFade, Pagination } from 'swiper'

import 'bootstrap/js/src/alert'
import 'bootstrap/js/src/collapse'
import 'bootstrap/js/src/modal'
import 'bootstrap/js/src/tab'
import Tooltip from 'bootstrap/js/src/tooltip'

import TinyDatePicker from 'tiny-date-picker'

const tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
tooltipTriggerList.map(function (tooltipTriggerEl) {
  return new Tooltip(tooltipTriggerEl)
})

const datepicker = [].slice.call(document.getElementsByClassName('fnt-DatePicker'))
datepicker.map(function (e) {
  TinyDatePicker(e, {
    lang: {
      days: ['CN', 'T2', 'T3', 'T4', 'T5', 'T6', 'T7'],
      months: ['Tháng 1', 'Tháng 2', 'Tháng 3', 'Tháng 4', 'Tháng 5', 'Tháng 6', 'Tháng 7', 'Tháng 8', 'Tháng 9', 'Tháng 10', 'Tháng 11', 'Tháng 12'],
      today: 'Hôm nay',
      clear: 'Xóa',
      close: 'Thoát',
    },
    format(date) {
      return date.toLocaleDateString('vi-VN')
    },
    min: new Date()
  })
})

// Init Swiper
Swiper.use([Autoplay, Navigation, Lazy, Thumbs, EffectFade, Pagination])

const fntIMGThumbs = new Swiper('.fnt-product-image-thumbs-swiper', {
  spaceBetween: 10,
  slidesPerView: 5,
  freeMode: true,
  watchSlidesVisibility: true,
  watchSlidesProgress: true,
  breakpoints: {
    0: {
      slidesPerView: 4,
    },
    992: {
      slidesPerView: 5,
    },
  },
})

const fntIMGFull = new Swiper('.fnt-product-image-full-swiper', {
  lazy: true,
  effect: 'fade',
  thumbs: {
    swiper: fntIMGThumbs,
  },
})

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
    // 0: {
    //   pagination: {
    //     el: '.swiper-pagination',
    //     dynamicBullets: true,
    //     clickable: true,
    //   },
    // },
    992: {
      pagination: {
        el: '.swiper-pagination',
        clickable: true,
      },
    },
  },
})

const jQuery = window.jQuery

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

  // Smooth scroll to top
  jQuery('#totop,#bttop,.bttop').click(function () {
    jQuery('html,body').animate(
      {
        scrollTop: 0,
      },
      800
    )
    return !1
  })

  jQuery('.fnt-product-item .fnt-product-image').click(function () {
    window.location.href = jQuery(this).parent().attr('data-url')
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
    13 != a.which || a.shiftKey || (a.preventDefault(), jQuery('.fnt-search-form .fnt-btn-search').trigger('click'))
  })

  // Show messger timeout login users
  nv_is_user &&
    (myTimerPage = setTimeout(function () {
      timeoutsessrun()
    }, nv_check_pass_mstime))

  // Show confirm message on leave, reload page
  jQuery('form.confirm-reload').change(function () {
    jQuery(window).bind('beforeunload', function () {
      return nv_msgbeforeunload
    })
  })

  // Tooltip
  jQuery('.form-tooltip').tooltip({
    selector: '[data-toggle=tooltip]',
    container: 'body',
  })
  jQuery("[data-rel='tooltip'][data-content!='']")
    .removeAttr('title')
    .tooltip({
      container: 'body',
      html: !0,
      title: function () {
        return ('' == jQuery(this).data('img') || !jQuery(this).data('img') ? '' : '<img class="img-thumbnail pull-left" src="' + jQuery(this).data('img') + '" width="90" />') + jQuery(this).data('content')
      },
    })

  // Change site lang
  jQuery('.nv_change_site_lang').change(function () {
    document.location = jQuery(this).val()
  })

  // Xử lý menu bootstrap nếu có
  if (jQuery('#menu-site-default').length) {
    jQuery('#menu-site-default .dropdown .caret').on('click', function (e) {
      if (NVIsMobileMenu) {
        e.preventDefault()
        var cMenu = jQuery(this).parent().parent()
        var cMenuOpen = cMenu.is('.open')
        jQuery('#menu-site-default .dropdown').removeClass('open')
        if (!cMenuOpen) {
          cMenu.addClass('open')
        }
      }
    })

    jQuery('#menu-site-default .dropdown').hover(
      function (e) {
        if (!NVIsMobileMenu) {
          jQuery(this).addClass('open')
        }
      },
      function () {
        if (!NVIsMobileMenu) {
          jQuery(this).removeClass('open')
        }
      }
    )

    jQuery('#menu-site-default a').hover(
      function () {
        jQuery(this).attr('rel', jQuery(this).attr('title'))
        jQuery(this).removeAttr('title')
      },
      function () {
        jQuery(this).attr('title', jQuery(this).attr('rel'))
        jQuery(this).removeAttr('rel')
      }
    )
  }

  //Tip + Ftip
  jQuery('[data-toggle=collapse]').click(function (a) {
    tipHide()
    ftipHide()
  })

  jQuery(document).on('keydown', function (a) {
    27 === a.keyCode && (tip_active && tip_autoclose && tipHide(), ftip_active && ftip_autoclose && ftipHide())
  })

  jQuery(document).on('click', function () {
    tip_active && tip_autoclose && tipHide()
    ftip_active && ftip_autoclose && ftipHide()
  })

  jQuery('#tip, #ftip').on('click', function (a) {
    a.stopPropagation()
  })

  jQuery('[data-toggle=tip], [data-toggle=ftip]').click(function () {
    var a = jQuery(this).attr('data-target'),
      d = jQuery(a).html(),
      b = jQuery(this).attr('data-toggle'),
      c = 'tip' == b ? jQuery('#tip').attr('data-content') : jQuery('#ftip').attr('data-content')
    var callback = jQuery(this).data('callback')
    a != c ? ('' != c && jQuery('[data-target="' + c + '"]').attr('data-click', 'y'), 'tip' == b ? (jQuery('#tip .bg').html(d), tipShow(this, a, callback)) : (jQuery('#ftip .bg').html(d), ftipShow(this, a, callback))) : 'n' == jQuery(this).attr('data-click') ? ('tip' == b ? tipHide() : ftipHide()) : 'tip' == b ? tipShow(this, a, callback) : ftipShow(this, a, callback)
    return !1
  })

  // Google map
  if (jQuery('.company-address').length) {
    jQuery('.company-map-modal').on('shown.bs.modal', function () {
      var iframe = jQuery(this).find('iframe')
      if (!iframe.data('loaded')) {
        iframe.attr('src', iframe.data('src'))
        iframe.data('loaded', true)
      }
    })
  }

  // maxLength for textarea
  jQuery('textarea').on('input propertychange', function () {
    var a = jQuery(this).prop('maxLength')
    if (!a || 'number' != typeof a) {
      var a = jQuery(this).attr('maxlength'),
        b = jQuery(this).val()
      b.length > a && jQuery(this).val(b.substr(0, a))
    }
  })

  //Alerts
  jQuery('[data-dismiss=alert]').on('click', function (a) {
    jQuery(this).is('.close') && jQuery(this).parent().remove()
  })

  //OpenID
  jQuery('#openidBt').on('click', function () {
    openID_result()
    return !1
  })

  //Change Localtion
  jQuery('[data-location]').on('click', function () {
    locationReplace(jQuery(this).data('location'))
  })

  //Add preload: link rel="prefetch", link rel="prerender"
  /*
    jQuery(document).bind("mousemove", function(e) {
        if (!e.target.href || e.target.href.indexOf(location.host) == -1 || e.target.hintAdded) return;
        add_hint("prefetch", e.target.href);
        add_hint("prerender", e.target.href);
        e.target.hintAdded = true
    });
    */

  // Chọn giao diện
  // jQuery('[data-toggle="nvchoosetheme"]').on('change', function() {
  //     $.ajax({
  //         type: 'POST',
  //         url: nv_base_siteurl + 'index.php?' + nv_lang_variable + '=' + nv_lang_data + '&' + nv_name_variable + '=nv-choose-theme',
  //         cache: false,
  //         data: {
  //             theme: jQuery(this).val(),
  //             tokend: jQuery(this).data('tokend')
  //         },
  //         dataType: "html"
  //     }).done(function(res) {
  //         location.reload();
  //     });
  // });

  // Bật hiệu ứng CSS3
  // jQuery('body').addClass('enable-animate');

  jQuery('.fnt-menu-wrapper .navbar-expand-lg .dropdown').hover(
    function () {
      jQuery('html').addClass('masking')
    },
    function () {
      jQuery('html').removeClass('masking')
    }
  )

  jQuery('.fnt-copyright-year').text(new Date().getFullYear())
})

// Load Social script - lasest
jQuery(window).on('load', function () {
  const wrapper = jQuery('.fnt-wrapper')
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

  if (typeof nv_is_recaptcha != 'undefined' && nv_is_recaptcha && nv_recaptcha_elements.length > 0) {
    var a = document.createElement('script')
    a.type = 'text/javascript'
    a.async = !0
    a.src = 'https://www.google.com/recaptcha/api.js?hl=' + nv_lang_interface + '&onload=reCaptchaLoadCallback&render=explicit'
    var b = document.getElementsByTagName('script')[0]
    b.parentNode.insertBefore(a, b)
  }
})
