/** Styles */
import '../scss/views/shop.scss'

/** JS */
import Swiper, { Lazy, Thumbs, EffectFade } from 'swiper'

import 'lightgallery.js'
import 'lg-fullscreen.js'
import 'lg-thumbnail.js'
import 'lg-zoom.js'

Swiper.use([Lazy, Thumbs, EffectFade])

window.Swiper = Swiper

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

const fnt_product_image_library = document.getElementById('fnt-product-image-library')

if (fnt_product_image_library)
  lightGallery(fnt_product_image_library, {
    selector: '.fnt-image-wrapper',
    download: false,
    mode: 'lg-zoom-in',
  })
