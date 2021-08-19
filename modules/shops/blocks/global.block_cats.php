<?php

/**
 * 
 * @Project NUKEVIET 4.x
 * @Author Datdevsx (im@vuji.tech)
 * @Copyright (C) 2020 Vuji Tech All rights reserved
 * 
 */

if (!defined('NV_MAINFILE')) {
  die('Stop!!!');
}

if (!nv_function_exists('nv_cats_products')) {

  /**
   * nv_block_config_cats()
   *
   * @param mixed $module
   * @param mixed $data_block
   * @param mixed $lang_block
   * @return
   *
   */
  function nv_block_config_cats($module, $data_block, $lang_block)
  {
    global $nv_Cache, $db_config, $site_mods;

    $html = "<div class=\"form-group\">";
    $html .= "	<label class=\"control-label col-sm-6\">" . $lang_block['category_selection'] . ":</label>";

    $sql = "SELECT catid, " . NV_LANG_DATA . "_title as title, " . NV_LANG_DATA . "_alias as alias, lev FROM " . $db_config['prefix'] . "_" . $site_mods[$module]['module_data'] . "_catalogs ORDER BY sort ASC";
    $list = $nv_Cache->db($sql, 'catid', $module);

    $html .= '<div class="col-sm-18">';
    $html .= '<div class="list-group-users">';
    foreach ($list as $l) {
      $xtitle_i = '';

      if ($l['lev'] > 0) {
        for ($i = 1; $i <= $l['lev']; ++$i) {
          $xtitle_i .= '<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>';
        }
      }

      $html .= '<div class="clearfix">' . $xtitle_i . '<label><input type="checkbox" name="config_category_selection[]" value="' . $l['catid'] . '" ' . ((in_array($l['catid'], $data_block['category_selection'])) ? ' checked="checked"' : '') . '</input>&nbsp;' . $l['title'] . '</label></div>';
    }
    $html .= '</div>';
    $html .= '</div>';
    $html .= "</div>";

    $html .= "<div class=\"form-group\">";
    $html .= "	<label class=\"control-label col-sm-6\">" . $lang_block['count_tab'] . ":</label>";
    $html .= "	<div class=\"col-sm-18\"><input class=\"form-control\" type=\"text\" name=\"config_count_tab\" size=\"5\" value=\"" . $data_block['count_tab'] . "\"/></div>";
    $html .= "</div>";

    $html .= "<div class=\"form-group\">";
    $html .= "	<label class=\"control-label col-sm-6\">" . $lang_block['count_product'] . ":</label>";
    $html .= "	<div class=\"col-sm-18\"><input class=\"form-control\" type=\"text\" name=\"config_count_product\" size=\"5\" value=\"" . $data_block['count_product'] . "\"/></div>";
    $html .= "</div>";

    $html .= "<div class=\"form-group\">";
    $html .= "	<label class=\"control-label col-sm-6\">" . $lang_block['cut_num'] . ":</label>";
    $html .= "	<div class=\"col-sm-18\"><input class=\"form-control\" type=\"text\" name=\"config_cut_num\" size=\"5\" value=\"" . $data_block['cut_num'] . "\"/></div>";
    $html .= "</div>";

    return $html;
  }

  /**
   * nv_block_config_cats_submit()
   *
   * @param mixed $module
   * @param mixed $lang_block
   * @return
   *
   */
  function nv_block_config_cats_submit($module, $lang_block)
  {
    global $nv_Request;
    $return = array();
    $return['error'] = array();
    $return['config'] = array();
    $return['config']['category_selection'] = $nv_Request->get_array('config_category_selection', 'post', array());
    $return['config']['count_tab'] = $nv_Request->get_int('config_count_tab', 'post', 0);
    $return['config']['count_product'] = $nv_Request->get_int('config_count_product', 'post', 0);
    $return['config']['cut_num'] = $nv_Request->get_int('config_cut_num', 'post', 0);
    return $return;
  }

  if (!nv_function_exists('nv_get_price_tmp')) {

    function nv_get_price_tmp($module_name, $module_data, $module_file, $pro_id)
    {
      global $nv_Cache, $db, $db_config, $module_config, $discounts_config, $money_config;

      $price = array();
      $pro_config = $module_config[$module_name];
      
      require_once NV_ROOTDIR . '/modules/' . $module_file . '/site.functions.php';
      $price = nv_get_price($pro_id, $pro_config['money_unit'], 1, false, $module_name);

      // var_dump($price);

      return $price;
    }
  }

  /**
   * nv_cats_products()
   *
   * @param mixed $block_config
   * @return
   *
   */
  function nv_cats_products($block_config)
  {
    global $nv_Cache, $nv_Cache, $site_mods, $global_config, $lang_module, $module_config, $module_config, $module_name, $module_info, $global_array_shops_cat, $db_config, $my_head, $db, $pro_config, $money_config, $array_wishlist_id;

    $module = $block_config['module'];
    $mod_data = $site_mods[$module]['module_data'];
    $mod_file = $site_mods[$module]['module_file'];

    if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/modules/' . $mod_file . '/block.cats_products.tpl')) {
      $block_theme = $global_config['module_theme'];
    } else {
      $block_theme = 'default';
    }

    if ($module != $module_name) {
      $sql = 'SELECT catid, parentid, lev, ' . NV_LANG_DATA . '_title AS title, ' . NV_LANG_DATA . '_alias AS alias, viewcat, numsubcat, subcatid, image, numlinks, ' . NV_LANG_DATA . '_description AS description, inhome, ' . NV_LANG_DATA . '_keywords AS keywords, groups_view, typeprice FROM ' . $db_config['prefix'] . '_' . $mod_data . '_catalogs ORDER BY sort ASC';
      $list = $nv_Cache->db($sql, 'catid', $module);
      foreach ($list as $row) {
        $global_array_shops_cat[$row['catid']] = array(
          'catid' => $row['catid'],
          'parentid' => $row['parentid'],
          'title' => $row['title'],
          'alias' => $row['alias'],
          'image' => $row['image'],
          'link' => NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module . '&amp;' . NV_OP_VARIABLE . '=' . $row['alias'],
          'viewcat' => $row['viewcat'],
          'numsubcat' => $row['numsubcat'],
          'subcatid' => $row['subcatid'],
          'numlinks' => $row['numlinks'],
          'description' => $row['description'],
          'inhome' => $row['inhome'],
          'keywords' => $row['keywords'],
          'groups_view' => $row['groups_view'],
          'lev' => $row['lev'],
          'typeprice' => $row['typeprice']
        );
      }
      unset($list, $row);

      // Css
      // if (file_exists(NV_ROOTDIR . '/themes/' . $block_theme . '/css/' . $mod_file . '.css')) {
      //   $my_head .= '<link rel="StyleSheet" href="' . NV_BASE_SITEURL . 'themes/' . $block_theme . '/css/' . $mod_file . '.css" type="text/css" />';
      // }

      // js
      // if (file_exists(NV_ROOTDIR . '/themes/' . $block_theme . '/js/' . $mod_file . '.js')) {
      //   $my_head .= '<script src="' . NV_BASE_SITEURL . 'themes/' . $block_theme . '/js/' . $mod_file . '.js"></script>';
      // }

      // Language
      if (file_exists(NV_ROOTDIR . '/modules/' . $mod_file . '/language/' . NV_LANG_DATA . '.php')) {
        require_once NV_ROOTDIR . '/modules/' . $mod_file . '/language/' . NV_LANG_DATA . '.php';
      }

      $pro_config = $module_config[$module];

      // Lay ty gia ngoai te
      $sql = 'SELECT code, currency, exchange, round, number_format FROM ' . $db_config['prefix'] . '_' . $mod_data . '_money_' . NV_LANG_DATA;
      $cache_file = NV_LANG_DATA . '_' . md5($sql) . '_' . NV_CACHE_PREFIX . '.cache';
      if (($cache = $nv_Cache->getItem($module, $cache_file)) != false) {
        $money_config = unserialize($cache);
      } else {
        $money_config = array();
        $result = $db->query($sql);
        while ($row = $result->fetch()) {
          $money_config[$row['code']] = array(
            'code' => $row['code'],
            'currency' => $row['currency'],
            'exchange' => $row['exchange'],
            'round' => $row['round'],
            'number_format' => $row['number_format'],
            'decimals' => $row['round'] > 1 ? $row['round'] : strlen($row['round']) - 2,
            'is_config' => ($row['code'] == $pro_config['money_unit']) ? 1 : 0
          );
        }
        $result->closeCursor();
        $cache = serialize($money_config);
        $nv_Cache->setItem($module, $cache_file, $cache);
      }
    }

    $link = NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module . '&amp;' . NV_OP_VARIABLE . '=';

    $xtpl = new XTemplate('block.cats_products.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/modules/' . $mod_file);
    $xtpl->assign('LANG', $lang_module);
    // $xtpl->assign('WIDTH', $pro_config['homewidth']);

    $cut_num = $block_config['cut_num'];
    $catids = array_slice($block_config['category_selection'], 0, $block_config['count_tab']);

    $xtpl->assign('BLOCK_ID', $block_config['bid']);

    // Nav Tabs
    foreach ($catids as $index => $catid) {
      if ($index == 0) {
        $xtpl->assign('TAB_ACTIVE', 'active');
      } else {
        $xtpl->assign('TAB_ACTIVE', '');
      }
      $xtpl->assign('TAB_TITLE', $global_array_shops_cat[$catid]['title']);
      $xtpl->assign('TAB_ALIAS', $global_array_shops_cat[$catid]['alias']);
      $xtpl->parse('main.nav_tabs.loop');
    }
    $xtpl->parse('main.nav_tabs');

    // Tabs Content
    foreach ($catids as $index => $catid) {
      if ($index == 0) {
        $xtpl->assign('TAB_ACTIVE', 'show active');
      } else {
        $xtpl->assign('TAB_ACTIVE', '');
      }
      $xtpl->assign('TAB_ID', $global_array_shops_cat[$catid]['alias']);

      if (!empty($global_array_shops_cat[$catid]['subcatid'])) {
        $array_catid = GetCatidInParentFix($catid);
        $array_listcatid = implode(',', $array_catid);
      } else {
        $array_listcatid = $catid;
      }

      $db->sqlreset()
        ->select('id, listcatid, ' . NV_LANG_DATA . '_title AS title, ' . NV_LANG_DATA . '_alias AS alias, publtime, homeimgfile, homeimgthumb, product_price, money_unit, discount_id, showprice, product_number')
        ->from($db_config['prefix'] . '_' . $mod_data . '_rows')
        ->where('status = 1 AND listcatid IN(' . $array_listcatid . ')')
        ->order('publtime DESC')
        ->limit($block_config['count_product']);

      $list = $nv_Cache->db($db->sql(), 'id', $module);
      foreach ($list as $row) {
        if ($row['homeimgthumb'] == 1) {
          // image thumb

          $src_img = NV_BASE_SITEURL . NV_FILES_DIR . '/' . $site_mods[$module]['module_upload'] . '/' . $row['homeimgfile'];
        } elseif ($row['homeimgthumb'] == 2) {
          // image file

          $src_img = NV_BASE_SITEURL . NV_UPLOADS_DIR . '/' . $site_mods[$module]['module_upload'] . '/' . $row['homeimgfile'];
        } elseif ($row['homeimgthumb'] == 3) {
          // image url

          $src_img = $row['homeimgfile'];
        } else {
          // no image

          $src_img = NV_BASE_SITEURL . 'themes/' . $block_theme . '/images/shops/no-image.jpg';
        }

        $xtpl->assign('id', $row['id']);
        $xtpl->assign('link', $link . $global_array_shops_cat[$row['listcatid']]['alias'] . '/' . $row['alias'] . $global_config['rewrite_exturl']);
        $xtpl->assign('title_cut', nv_clean60($row['title'], $cut_num));
        $xtpl->assign('title', $row['title']);
        $xtpl->assign('src_img', $src_img);
        $xtpl->assign('time', nv_date('d-m-Y h:i:s A', $row['publtime']));

        if ($pro_config['active_order'] == '1' and $pro_config['active_order_non_detail'] == '1') {
          if ($row['showprice'] == '1') {
            if ($row['product_number'] > 0) {
              $xtpl->parse('main.tabs_content.loop.product.order');
            } else {
              $xtpl->parse('main.tabs_content.loop.product.product_empty');
            }
          }
        }

        if ($pro_config['active_price'] == '1') {
          if ($row['showprice'] == '1') {
            $price = nv_get_price_tmp($module, $mod_data, $mod_file, $row['id']);
            // var_dump($price); die;
            $xtpl->assign('PRICE', $price);
            if ($row['discount_id'] and $price['discount_percent'] > 0) {
              $xtpl->parse('main.tabs_content.loop.product.price.discounts');
              $xtpl->parse('main.tabs_content.loop.product.discounts');
            } else {
              $xtpl->parse('main.tabs_content.loop.product.price.no_discounts');
            }
            $xtpl->parse('main.tabs_content.loop.product.price');
          } else {
            $xtpl->parse('main.tabs_content.loop.product.contact');
          }
        }

        // San pham yeu thich
        if ($pro_config['active_wishlist']) {
          if (!empty($array_wishlist_id)) {
            if (in_array($row['id'], $array_wishlist_id)) {
              $xtpl->parse('main.tabs_content.loop.product.wishlist.disabled');
            }
          }
          $xtpl->parse('main.tabs_content.loop.product.wishlist');
        }

        $xtpl->parse('main.tabs_content.loop.product');
      }

      $xtpl->assign('linkcat', $link . $global_array_shops_cat[$catid]['alias']);

      $xtpl->parse('main.tabs_content.loop');

      unset($array_catid);
    }
    $xtpl->parse('main.tabs_content');

    // Background Scripts
    $array_cat_image = array();
    foreach ($catids as $index => $catid) {
      if (!empty($global_array_shops_cat[$catid]['image'])) {
        $cat_image_link = NV_BASE_SITEURL . NV_UPLOADS_DIR . '/' . $site_mods[$module]['module_upload'] . '/' . $global_array_shops_cat[$catid]['image'];
        $array_cat_image['#tab-' . $global_array_shops_cat[$catid]['alias']] = $cat_image_link;
        // array_push($array_cat_image, $cat_image_link);
      }
    }
    $xtpl->assign('IMAGE_ARRAY', json_encode($array_cat_image));
    $xtpl->parse('main.scripts');

    $xtpl->parse('main');
    return $xtpl->text('main');
  }

  /**
   * GetCatidInParentFix()
   *
   * @param mixed $catid
   * @param integer $check_inhome
   * @return
   */
  function GetCatidInParentFix($catid, $check_inhome = 0)
  {
    global $global_array_shops_cat, $array_cat;
    unset($array_cat);
    $array_cat[] = $catid;
    $subcatid = explode(',', $global_array_shops_cat[$catid]['subcatid']);
    if (!empty($subcatid)) {
      foreach ($subcatid as $id) {
        if ($id > 0) {
          if ($global_array_shops_cat[$id]['numsubcat'] == 0) {
            if (!$check_inhome or ($check_inhome and $global_array_shops_cat[$id]['inhome'] == 1)) {
              $array_cat[] = $id;
            }
          } else {
            $array_cat_temp = GetCatidInParent($id, $check_inhome);
            foreach ($array_cat_temp as $catid_i) {
              if (!$check_inhome or ($check_inhome and $global_array_shops_cat[$catid_i]['inhome'] == 1)) {
                $array_cat[] = $catid_i;
              }
            }
          }
        }
      }
    }
    return array_unique($array_cat);
  }
}

if (defined('NV_SYSTEM')) {
  $content = nv_cats_products($block_config);
}
