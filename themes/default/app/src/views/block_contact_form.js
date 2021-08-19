/** Styles */
import '../scss/views/block_contact_form.scss'

/** JS */
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