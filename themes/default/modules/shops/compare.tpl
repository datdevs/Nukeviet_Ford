<!-- BEGIN: main -->
<div class="fnt-product-compare table-responsive">
  <table class="table">
    <colgroup>
      <col width="100px" />
    </colgroup>
    <thead>
      <th>&nbsp;</th>
      <!-- BEGIN: homeimgthumb -->
      <th class="text-center">
        <a class="fnt-product-compare-img" href="{link_pro}">
          <img class="lazyload" loading="lazy" data-sizes="auto" data-src="{img_pro}" alt="{TITLE}" draggable="false">
        </a>
      </th>
      <!-- END: homeimgthumb -->
    </thead>
    <tbody>
      <tr>
        <td align="center"><button class="btn btn-danger btn-sm text-center" onclick="nv_compare_del( 0, 1 )">{LANG.compare_del_all}</button></td>
        <!-- BEGIN: button -->
        <td align="center">
          <button class="btn btn-warning btn-sm" onclick="nv_compare_del( {id}, 0 )">{GLANG.delete}</button>
        </td>
        <!-- END: button -->
      </tr>
      <tr>
        <td>&nbsp;</td>
        <!-- BEGIN: title -->
        <td><a class="h5 m-0" href="{link_pro}" title="{title_pro}">{title_pro}</a></td>
        <!-- END: title -->
      </tr>
      <tr>
        <td><strong>{LANG.title_price}</strong></td>
        <!-- BEGIN: price -->
        <td>
          <div class="h4 m-0">
            <!-- BEGIN: no_discounts -->
            <span class="fnt-money">{PRICE.price_format} {PRICE.unit}</span>
            <!-- END: no_discounts -->
          </div>
        </td>
        <!-- END: price -->
        <!-- BEGIN: contact -->
        <td>
          <div class="h4 m-0">
            <span class="fnt-money">{LANG.price_contact}</span>
          </div>
        </td>
        <!-- END: contact -->
      </tr>
      <tr>
        <td><strong>Chi tiết</strong></td>
        <!-- BEGIN: specs -->
        <td><div class="fnt-product-specifications">{specs}</div></td>
        <!-- END: specs -->
      </tr>
    </tbody>
  </table>
</div>
<script type="text/javascript" data-show="after">
  var lang_del_confirm = '{LANG.compare_del_items_confirm}';
</script>
<!-- END: main -->