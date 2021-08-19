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

if (!nv_function_exists('nv_customer_chat_plugin')) {
  /**
   * nv_customer_chat_plugin_config()
   *
   * @param mixed $module
   * @param mixed $data_block
   * @param mixed $lang_block
   * @return
   */
  function nv_customer_chat_plugin_config($module, $data_block, $lang_block)
  {
    $html = '<div class="form-group">';
    $html .= '	<label class="control-label col-sm-10">Page ID: <a href="https://lookup-id.com/">Lấy ID tại đây</a></label>';
    $html .= '	<div class="col-sm-14"><input type="text" name="config_page_id" class="form-control" value="' . $data_block['page_id'] . '"/></div>';
    $html .= '</div>';
    $html .= '<div class="form-group">';
    $html .= '	<label class="control-label col-sm-10">Màu: (Màu mã HEX không thêm dấu #)</label>';
    $html .= '	<div class="col-sm-14"><input type="text" name="config_theme_color" class="form-control" value="' . $data_block['theme_color'] . '"/></div>';
    $html .= '</div>';
    $html .= '<div class="form-group">';
    $html .= '	<label class="control-label col-sm-10">Văn bản chào mừng nếu người dùng đã đăng nhập Facebook:</label>';
    $html .= '	<div class="col-sm-14"><input type="text" name="config_logged_in_greeting" class="form-control" value="' . $data_block['logged_in_greeting'] . '"/></div>';
    $html .= '</div>';
    $html .= '<div class="form-group">';
    $html .= '	<label class="control-label col-sm-10">Văn bản chào mừng nếu người dùng không đăng nhập Facebook:</label>';
    $html .= '	<div class="col-sm-14"><input type="text" name="config_logged_out_greeting" class="form-control" value="' . $data_block['logged_out_greeting'] . '"/></div>';
    $html .= '</div>';
    return $html;
  }

  /**
   * nv_customer_chat_plugin_submit()
   *
   * @param mixed $module
   * @param mixed $lang_block
   * @return
   */
  function nv_customer_chat_plugin_submit($module, $lang_block)
  {
    global $nv_Request;
    $return = array();
    $return['error'] = array();
    $return['config']['page_id'] = $nv_Request->get_title('config_page_id', 'post');
    $return['config']['theme_color'] = $nv_Request->get_title('config_theme_color', 'post');
    $return['config']['lang'] = $nv_Request->get_title('config_lang', 'post');
    $return['config']['logged_in_greeting'] = $nv_Request->get_title('config_logged_in_greeting', 'post');
    $return['config']['logged_out_greeting'] = $nv_Request->get_title('config_logged_out_greeting', 'post');
    return $return;
  }

  /**
   * nv_customer_chat_plugin()
   *
   * @param mixed $block_config
   * @return
   */
  function nv_customer_chat_plugin($block_config)
  {
    global $global_config, $site_mods, $lang_global;

    if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/blocks/global.customer_chat_plugin.tpl')) {
      $block_theme = $global_config['module_theme'];
    } elseif (file_exists(NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/blocks/global.customer_chat_plugin.tpl')) {
      $block_theme = $global_config['site_theme'];
    } else {
      $block_theme = 'default';
    }

    $xtpl = new XTemplate('global.customer_chat_plugin.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/blocks');
    $xtpl->assign('NV_BASE_SITEURL', NV_BASE_SITEURL);
    $xtpl->assign('LANG', $lang_global);
    $xtpl->assign('BLOCK_THEME', $block_theme);
    // $xtpl->assign('DATA', $block_config);

    $xtpl->assign('PAGE_ID', $block_config['page_id']);

    if (!empty($block_config['theme_color'])) {
      $xtpl->assign('THEME_COLOR', '#' . $block_config['theme_color']);
      $xtpl->parse('main.theme_color');
    }

    if (!empty($block_config['logged_in_greeting'])) {
      $xtpl->assign('LOGGED_IN_GREETING', $block_config['logged_in_greeting']);
      $xtpl->parse('main.logged_in_greeting');
    }

    if (!empty($block_config['logged_out_greeting'])) {
      $xtpl->assign('LOGGED_OUT_GREETING', $block_config['logged_out_greeting']);
      $xtpl->parse('main.logged_out_greeting');
    }

    $xtpl->parse('main');
    return $xtpl->text('main');
  }
}

if (defined('NV_SYSTEM')) {
  $content = nv_customer_chat_plugin($block_config);
}
