<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC <contact@vinades.vn>
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Sun, 04 May 2014 12:41:32 GMT
 */

if (!defined('NV_MAINFILE')) {
  die('Stop!!!');
}

if (!nv_function_exists('nv_menu_widget_mobile')) {
  /**
   * nv_menu_widget_mobile_config()
   *
   * @param mixed $module
   * @param mixed $data_block
   * @param mixed $lang_block
   * @return
   */
  function nv_menu_widget_mobile_config($module, $data_block, $lang_block)
  {
    $html = '<div class="form-group">';
    $html .= '	<label class="control-label col-sm-6">Số điện thoại:</label>';
    $html .= '	<div class="col-sm-18"><input type="text" name="config_phone_number" class="form-control" value="' . $data_block['phone_number'] . '"/></div>';
    $html .= '</div>';
    $html .= '<div class="form-group">';
    $html .= '	<label class="control-label col-sm-6">Messenger ID: <a href="https://lookup-id.com/">Lấy ID tại đây</a></label>';
    $html .= '	<div class="col-sm-18"><input type="text" name="config_messenger_id" class="form-control" value="' . $data_block['messenger_id'] . '"/></div>';
    $html .= '</div>';
    $html .= '<div class="form-group">';
    $html .= '	<label class="control-label col-sm-6">Zalo:</label>';
    $html .= '	<div class="col-sm-18"><input type="text" name="config_zalo" class="form-control" value="' . $data_block['zalo'] . '"/></div>';
    $html .= '</div>';
    $html .= '<div class="form-group">';
    $html .= '	<label class="control-label col-sm-6">Bản đồ:</label>';
    $html .= '	<div class="col-sm-18"><input type="text" name="config_maps" class="form-control" value="' . $data_block['maps'] . '"/></div>';
    $html .= '</div>';
    return $html;
  }

  /**
   * nv_menu_widget_mobile_submit()
   *
   * @param mixed $module
   * @param mixed $lang_block
   * @return
   */
  function nv_menu_widget_mobile_submit($module, $lang_block)
  {
    global $nv_Request;
    $return = array();
    $return['error'] = array();
    $return['config']['phone_number'] = $nv_Request->get_title('config_phone_number', 'post');
    $return['config']['messenger_id'] = $nv_Request->get_title('config_messenger_id', 'post');
    $return['config']['zalo'] = $nv_Request->get_title('config_zalo', 'post');
    $return['config']['maps'] = $nv_Request->get_title('config_maps', 'post');
    return $return;
  }

  /**
   * nv_menu_widget_mobile()
   *
   * @param mixed $block_config
   * @return
   */
  function nv_menu_widget_mobile($block_config)
  {
    global $global_config, $site_mods, $lang_global;

    if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/blocks/global.widget-mobile.tpl')) {
      $block_theme = $global_config['module_theme'];
    } elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/blocks/global.widget-mobile.tpl')) {
      $block_theme = $global_config['site_theme'];
    } else {
      $block_theme = 'default';
    }

    $xtpl = new XTemplate('global.widget-mobile.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/blocks');
    $xtpl->assign('NV_BASE_SITEURL', NV_BASE_SITEURL);
    $xtpl->assign('LANG', $lang_global);
    $xtpl->assign('BLOCK_THEME', $block_theme);
    $xtpl->assign('DATA', $block_config);
    if (empty($block_config['phone_number'])) {
      $block_config['phone_number'] = '#';
    }
    if (empty($block_config['messenger_id'])) {
      $block_config['messenger_id'] = '#';
    }
    if (empty($block_config['zalo'])) {
      $block_config['zalo'] = '#';
    }
    if (empty($block_config['maps'])) {
      $block_config['maps'] = '#';
    }
    $xtpl->parse('main');
    return $xtpl->text('main');
  }
}

if (defined('NV_SYSTEM')) {
  $content = nv_menu_widget_mobile($block_config);
}
