<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC <contact@vinades.vn>
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate 3/9/2010 23:25
 */

if (!defined('NV_MAINFILE')) {
    die('Stop!!!');
}

if (!nv_function_exists('nv_news_block_tophits')) {
    /**
     * nv_block_config_tophits_blocks()
     *
     * @param mixed $module
     * @param mixed $data_block
     * @param mixed $lang_block
     * @return
     */
    function nv_block_config_tophits_blocks($module, $data_block, $lang_block)
    {
        global $nv_Cache, $site_mods;

        $html = '';
        $html .= '<div class="form-group">';
        $html .= '	<label class="control-label col-sm-6">' . $lang_block['number_day'] . ':</label>';
        $html .= '	<div class="col-sm-18"><input type="text" name="config_number_day" class="form-control w100" size="5" value="' . $data_block['number_day'] . '"/></div>';
        $html .= '</div>';
        $html .= '<div class="form-group">';
        $html .= '	<label class="control-label col-sm-6">' . $lang_block['numrow'] . ':</label>';
        $html .= '	<div class="col-sm-18"><input type="text" name="config_numrow" class="form-control w100" size="5" value="' . $data_block['numrow'] . '"/></div>';
        $html .= '</div>';

        return $html;
    }

    /**
     * nv_block_config_tophits_blocks_submit()
     *
     * @param mixed $module
     * @param mixed $lang_block
     * @return
     */
    function nv_block_config_tophits_blocks_submit($module, $lang_block)
    {
        global $nv_Request;
        $return = array();
        $return['error'] = array();
        $return['config'] = array();
        $return['config']['number_day'] = $nv_Request->get_int('config_number_day', 'post', 0);
        $return['config']['numrow'] = $nv_Request->get_int('config_numrow', 'post', 0);
        return $return;
    }

    /**
     * nv_news_block_tophits()
     *
     * @param mixed $block_config
     * @param mixed $mod_data
     * @return
     */
    function nv_news_block_tophits($block_config, $mod_data)
    {
        global $module_array_cat, $site_mods, $db_slave, $module_config, $global_config;

        $module = $block_config['module'];
        $mod_file = $site_mods[$module]['module_file'];

        $blockwidth = $module_config[$module]['blockwidth'];
        $show_no_image = $module_config[$module]['show_no_image'];
        $publtime = NV_CURRENTTIME - $block_config['number_day'] * 86400;

        $array_block_news = array();
        $db_slave->sqlreset()
            ->select('id, catid, publtime, title, alias, homeimgthumb, homeimgfile, hometext, external_link')
            ->from(NV_PREFIXLANG . '_' . $mod_data . '_rows')
            ->order('hitstotal DESC')
            ->limit($block_config['numrow']);
        if (empty($block_config['nocatid'])) {
            $db_slave->where('status= 1 AND publtime > ' . $publtime);
        } else {
            $db_slave->where('status= 1 AND publtime > ' . $publtime . ' AND catid NOT IN (' . implode(',', $block_config['nocatid']) . ')');
        }

        $result = $db_slave->query($db_slave->sql());
        while (list ($id, $catid, $publtime, $title, $alias, $homeimgthumb, $homeimgfile, $hometext, $external_link) = $result->fetch(3)) {
            if ($homeimgthumb == 1) {
                // image thumb
                $imgurl = NV_BASE_SITEURL . NV_FILES_DIR . '/' . $site_mods[$module]['module_upload'] . '/' . $homeimgfile;
            } elseif ($homeimgthumb == 2) {
                // image file
                $imgurl = NV_BASE_SITEURL . NV_UPLOADS_DIR . '/' . $site_mods[$module]['module_upload'] . '/' . $homeimgfile;
            } elseif ($homeimgthumb == 3) {
                // image url
                $imgurl = $homeimgfile;
            } elseif (!empty($show_no_image)) {
                // no image
                $imgurl = NV_BASE_SITEURL . $show_no_image;
            } else {
                $imgurl = '';
            }
            $link = NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module . '&amp;' . NV_OP_VARIABLE . '=' . $module_array_cat[$catid]['alias'] . '/' . $alias . '-' . $id . $global_config['rewrite_exturl'];

            $array_block_news[] = array(
                'id' => $id,
                'title' => $title,
                'link' => $link,
                'imgurl' => $imgurl,
                'width' => $blockwidth,
                'hometext' => $hometext,
                'external_link' => $external_link,
                'publishdate' => nv_RelativeTime($publtime, 'd/m/Y')
            );
        }

        if (file_exists(NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/modules/' . $mod_file . '/block_tophits.tpl')) {
            $block_theme = $global_config['module_theme'];
        } else {
            $block_theme = 'default';
        }

        $xtpl = new XTemplate('block_tophits.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/modules/' . $mod_file);
        $xtpl->assign('NV_BASE_SITEURL', NV_BASE_SITEURL);
        $xtpl->assign('TEMPLATE', $block_theme);

        foreach ($array_block_news as $array_news) {
            $array_news['title_clean'] = nv_clean60($array_news['title'], 40);

            if ($array_news['external_link']) {
                $array_news['target_blank'] = 'target="_blank"';
            }

            $xtpl->assign('blocknews', $array_news);

            if (!empty($array_news['imgurl'])) {
                $xtpl->parse('main.newloop.imgblock');
            }

            $xtpl->parse('main.newloop');
        }

        $xtpl->parse('main');
        return $xtpl->text('main');
    }
}

if (defined('NV_SYSTEM')) {
    global $nv_Cache, $site_mods, $module_name, $global_array_cat, $module_array_cat;
    $module = $block_config['module'];
    if (isset($site_mods[$module])) {
        $mod_data = $site_mods[$module]['module_data'];
        if ($module == $module_name) {
            $module_array_cat = $global_array_cat;
            unset($module_array_cat[0]);
        } else {
            $module_array_cat = array();
            $sql = 'SELECT catid, parentid, title, alias, viewcat, subcatid, numlinks, description, keywords, groups_view, status FROM ' . NV_PREFIXLANG . '_' . $mod_data . '_cat ORDER BY sort ASC';
            $list = $nv_Cache->db($sql, 'catid', $module);
            if(!empty($list))
            {
                foreach ($list as $l) {
                    $module_array_cat[$l['catid']] = $l;
                    $module_array_cat[$l['catid']]['link'] = NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module . '&amp;' . NV_OP_VARIABLE . '=' . $l['alias'];
                }
            }
        }
        $content = nv_news_block_tophits($block_config, $mod_data);
    }
}