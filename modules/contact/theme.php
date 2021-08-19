<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES <contact@vinades.vn>
 * @Copyright (C) 2014 VINADES. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Apr 20, 2010 10:47:41 AM
 */

if (!defined('NV_IS_MOD_CONTACT')) {
  die('Stop!!!');
}

/**
 * main_theme()
 *
 * @param mixed $array_content
 * @param mixed $array_department
 * @param mixed $base_url
 * @param mixed $checkss
 * @return
 */
function contact_main_theme($array_content, $array_department, $catsName, $base_url, $checkss)
{
  global $lang_global, $lang_module, $module_info, $alias_url;

  $xtpl = new XTemplate('main.tpl', NV_ROOTDIR . '/themes/' . $module_info['template'] . '/modules/' . $module_info['module_theme']);
  $xtpl->assign('LANG', $lang_module);
  $xtpl->assign('GLANG', $lang_global);
  $xtpl->assign('CHECKSS', $checkss);
  $xtpl->assign('CONTENT', $array_content);

  if (!empty($array_content['bodytext'])) {
    $xtpl->parse('main.bodytext');
  }

  if (!empty($array_department)) {
    foreach ($array_department as $dep) {
      if (empty($alias_url) and $dep['act'] == 2) {
        // Không hiển thị các bộ phận theo cấu hình trong quản trị
        continue;
      }

      $xtpl->assign('DEP', $dep);

      if (!empty($dep['note'])) {
        $xtpl->parse('main.dep.note');
      }

      if (!empty($dep['phone'])) {
        $nums = array_map('trim', explode('|', nv_unhtmlspecialchars($dep['phone'])));
        foreach ($nums as $k => $num) {
          unset($m);
          if (preg_match("/^(.*)\s*\[([0-9\+\.\,\;\*\#]+)\]$/", $num, $m)) {
            $phone = array('number' => nv_htmlspecialchars($m[1]), 'href' => $m[2]);
            $xtpl->assign('PHONE', $phone);
            $xtpl->parse('main.dep.phone.item.href');
            $xtpl->parse('main.dep.phone.item.href2');
          } else {
            $num = preg_replace("/\[[^\]]*\]/", '', $num);
            $phone = array('number' => nv_htmlspecialchars($num));
            $xtpl->assign('PHONE', $phone);
          }
          if ($k) {
            $xtpl->parse('main.dep.phone.item.comma');
          }
          $xtpl->parse('main.dep.phone.item');
        }

        $xtpl->parse('main.dep.phone');
      }
      if (!empty($dep['fax'])) {
        $xtpl->parse('main.dep.fax');
      }
      if (!empty($dep['email'])) {
        $emails = array_map('trim', explode(',', $dep['email']));
        foreach ($emails as $k => $email) {
          $xtpl->assign('EMAIL', $email);
          if ($k) {
            $xtpl->parse('main.dep.email.item.comma');
          }
          $xtpl->parse('main.dep.email.item');
        }

        $xtpl->parse('main.dep.email');
      }

      if (!empty($dep['address'])) {
        $xtpl->assign('ADDRESS', $dep['address']);
        $xtpl->parse('main.dep.address');
      }

      if (!empty($dep['others'])) {
        $others = json_decode($dep['others'], true);

        if (!empty($others)) {
          foreach ($others as $key => $value) {
            if (!empty($value)) {
              if (strtolower($key) == 'yahoo') {
                $ys = array_map('trim', explode(',', $value));
                foreach ($ys as $k => $y) {
                  $xtpl->assign('YAHOO', array('name' => $key, 'value' => $y));
                  if ($k) {
                    $xtpl->parse('main.dep.yahoo.item.comma');
                  }
                  $xtpl->parse('main.dep.yahoo.item');
                }
                $xtpl->parse('main.dep.yahoo');
              } elseif (strtolower($key) == 'skype') {
                $ss = array_map('trim', explode(',', $value));
                foreach ($ss as $k => $s) {
                  $xtpl->assign('SKYPE', array('name' => $key, 'value' => $s));
                  if ($k) {
                    $xtpl->parse('main.dep.skype.item.comma');
                  }
                  $xtpl->parse('main.dep.skype.item');
                }
                $xtpl->parse('main.dep.skype');
              } elseif (strtolower($key) == 'viber') {
                $ss = array_map('trim', explode(',', $value));
                foreach ($ss as $k => $s) {
                  $xtpl->assign('VIBER', array('name' => $key, 'value' => $s));
                  if ($k) {
                    $xtpl->parse('main.dep.viber.item.comma');
                  }
                  $xtpl->parse('main.dep.viber.item');
                }
                $xtpl->parse('main.dep.viber');
              } elseif (strtolower($key) == 'icq') {
                $ss = array_map('trim', explode(',', $value));
                foreach ($ss as $k => $s) {
                  $xtpl->assign('ICQ', array('name' => $key, 'value' => $s));
                  if ($k) {
                    $xtpl->parse('main.dep.icq.item.comma');
                  }
                  $xtpl->parse('main.dep.icq.item');
                }
                $xtpl->parse('main.dep.icq');
              } elseif (strtolower($key) == 'whatsapp') {
                $ss = array_map('trim', explode(',', $value));
                foreach ($ss as $k => $s) {
                  $xtpl->assign('WHATSAPP', array('name' => $key, 'value' => $s));
                  if ($k) {
                    $xtpl->parse('main.dep.whatsapp.item.comma');
                  }
                  $xtpl->parse('main.dep.whatsapp.item');
                }
                $xtpl->parse('main.dep.whatsapp');
              } else {
                $xtpl->assign('OTHER', array('name' => $key, 'value' => $value));
                if (nv_is_url($value)) {
                  $xtpl->parse('main.dep.other.url');
                } else {
                  $xtpl->parse('main.dep.other.text');
                }
                $xtpl->parse('main.dep.other');
              }
            }
          }
        }
      }

      $xtpl->parse('main.dep');
    }
  }

  $form = contact_form_theme($array_content, $catsName, $base_url, $checkss);
  $xtpl->assign('FORM', $form);

  $xtpl->parse('main');
  return $xtpl->text('main');
}

/**
 * contact_form_theme()
 *
 * @param mixed $array_content
 * @param mixed $catsName
 * @param mixed $base_url
 * @param mixed $checkss
 * @return
 */
function contact_form_theme($array_content, $catsName, $base_url, $checkss)
{
  global $lang_global, $lang_module, $module_info, $global_config, $db, $db_config;

  $db->select('id, ' . NV_LANG_DATA . '_title as title')
    ->from($db_config['prefix'] . '_cars_rows')
    ->where('inhome=1 AND status=1 ')
    ->order('title ASC');

  $cars = $db->query($db->sql());

  $xtpl = new XTemplate('form.tpl', NV_ROOTDIR . '/themes/' . $module_info['template'] . '/modules/' . $module_info['module_theme']);
  $xtpl->assign('CONTENT', $array_content);
  $xtpl->assign('LANG', $lang_module);
  $xtpl->assign('GLANG', $lang_global);
  $xtpl->assign('ACTION_FILE', $base_url);
  $xtpl->assign('CHECKSS', $checkss);

  while (list($id, $title) = $cars->fetch(3)) {
    $xtpl->assign('CAR_TITLE', $title);
    $xtpl->parse('main.cars.loop');
    $xtpl->parse('main.cars2.loop');
  }
  $xtpl->parse('main.cars');
  $xtpl->parse('main.cars2');

  // if ($array_content['sendcopy']) {
  //   $xtpl->parse('main.sendcopy');
  // }

  if ($global_config['captcha_type'] == 2) {
    $xtpl->assign('RECAPTCHA_ELEMENT', 'recaptcha' . nv_genpass(8));
    $xtpl->assign('N_CAPTCHA', $lang_global['securitycode1']);
    $xtpl->parse('main.recaptcha');
  } else {
    $xtpl->assign('GFX_WIDTH', NV_GFX_WIDTH);
    $xtpl->assign('GFX_HEIGHT', NV_GFX_HEIGHT);
    $xtpl->assign('NV_BASE_SITEURL', NV_BASE_SITEURL);
    $xtpl->assign('CAPTCHA_REFRESH', $lang_global['captcharefresh']);
    $xtpl->assign('NV_GFX_NUM', NV_GFX_NUM);
    $xtpl->parse('main.captcha1');
    $xtpl->parse('main.captcha2');
    $xtpl->parse('main.captcha3');
    $xtpl->parse('main.captcha4');
  }

  // if (defined('NV_IS_USER')) {
  //   $xtpl->parse('main.iuser');
  // } else {
  //   $xtpl->parse('main.iguest');
  // }

  // if (!empty($catsName)) {
  //   foreach ($catsName as $key => $cat) {
  //     $xtpl->assign('SELECTVALUE', $key);
  //     $xtpl->assign('SELECTNAME', $cat);
  //     $xtpl->parse('main.cats.select_option_loop');
  //   }
  //   $xtpl->parse('main.cats');
  // }

  $xtpl->parse('main');
  return $xtpl->text('main');
}

/**
 * contact_formset()
 *
 * @param mixed $array_content
 * @param mixed $catsName
 * @param mixed $base_url
 * @param mixed $checkss
 * @return
 */
function contact_formset($array_content, $title_form, $catsName, $base_url, $checkss)
{
  global $lang_global, $lang_module, $module_info, $global_config, $db, $db_config;

  $db->select('id, ' . NV_LANG_DATA . '_title as title')
    ->from($db_config['prefix'] . '_cars_rows')
    ->where('inhome=1 AND status=1 ')
    ->order('title ASC');

  $cars = $db->query($db->sql());

  $xtpl = new XTemplate('formset.tpl', NV_ROOTDIR . '/themes/' . $module_info['template'] . '/modules/' . $module_info['module_theme']);
  $xtpl->assign('JS1', NV_BASE_SITEURL . 'themes/' . $module_info['template'] . '/app/build/block_contact_form.js');
  $xtpl->assign('JS2', NV_BASE_SITEURL . 'themes/' . $module_info['template'] . '/js/contact.js');
  $xtpl->assign('CONTENT', $array_content);
  $xtpl->assign('LANG', $lang_module);
  $xtpl->assign('GLANG', $lang_global);
  $xtpl->assign('ACTION_FILE', $base_url);
  $xtpl->assign('CHECKSS', $checkss);

  while (list($id, $title) = $cars->fetch(3)) {
    $xtpl->assign('CAR_TITLE', $title);
    $xtpl->parse('main.cars.loop');
  }

  if ($title_form == 'car_total') {
    $xtpl->assign('TITLE', 'Chi phí lăn bánh');
    $xtpl->parse('main.cars');
    $xtpl->parse('main.note1');
  }
  elseif ($title_form == 'installment') {
    $xtpl->assign('TITLE', 'Chi phí trả góp');
    $xtpl->parse('main.address');
    $xtpl->parse('main.cars');
    $xtpl->parse('main.note1');
  }
  elseif ($title_form == 'car_service') {
    $xtpl->assign('TITLE', 'Đăng ký bảo dưỡng');
    $xtpl->parse('main.cars2');
    $xtpl->parse('main.appointment_date');
    $xtpl->parse('main.note2');
  }
  elseif ($title_form == 'drive_test') {
    $xtpl->assign('TITLE', 'Đăng ký lái thử');
    $xtpl->parse('main.cars');
    $xtpl->parse('main.appointment_date');
    $xtpl->parse('main.note1');
  }

  if ($global_config['captcha_type'] == 2) {
    $xtpl->assign('RECAPTCHA_ELEMENT', 'recaptcha' . nv_genpass(8));
    $xtpl->assign('N_CAPTCHA', $lang_global['securitycode1']);
    $xtpl->parse('main.recaptcha');
  } else {
    $xtpl->assign('GFX_WIDTH', NV_GFX_WIDTH);
    $xtpl->assign('GFX_HEIGHT', NV_GFX_HEIGHT);
    $xtpl->assign('NV_BASE_SITEURL', NV_BASE_SITEURL);
    $xtpl->assign('CAPTCHA_REFRESH', $lang_global['captcharefresh']);
    $xtpl->assign('NV_GFX_NUM', NV_GFX_NUM);
    $xtpl->parse('main.captcha1');
    $xtpl->parse('main.captcha2');
    $xtpl->parse('main.captcha3');
    $xtpl->parse('main.captcha4');
  }

  $xtpl->parse('main');
  return $xtpl->text('main');
}

/**
 * contact_sendcontact()
 *
 * @param mixed $row_id
 * @param mixed $fcat
 * @param mixed $ftitle
 * @param mixed $fname
 * @param mixed $femail
 * @param mixed $fphone
 * @param mixed $fcon
 * @param mixed $fpart
 * @param bool $sendinfo
 * @return
 */
function contact_sendcontact($row_id, $fcat, $ftitle, $fname, $femail, $fphone, $fcon, $fpart, $faddress, $car_register, $appointment_date, $sendinfo = true)
{
  global $global_config, $lang_module, $module_info, $array_department, $client_info;

  $xtpl = new XTemplate('sendcontact.tpl', NV_ROOTDIR . '/themes/' . $module_info['template'] . '/modules/' . $module_info['module_theme']);
  $xtpl->assign('LANG', $lang_module);
  $xtpl->assign('SITE_NAME', $global_config['site_name']);
  $xtpl->assign('SITE_URL', $global_config['site_url']);
  $xtpl->assign('FULLNAME', $fname);
  $xtpl->assign('EMAIL', $femail);
  $xtpl->assign('PART', $array_department[$fpart]['full_name']);
  $xtpl->assign('IP', $client_info['ip']);
  $xtpl->assign('TITLE', $ftitle);
  $xtpl->assign('CONTENT', nv_htmlspecialchars($fcon));

  if (!empty($car_register)) {
    $xtpl->assign('CAR', $car_register);
    $xtpl->parse('main.car');
  }

  if (!empty($appointment_date)) {
    $xtpl->assign('DATE', $appointment_date);
    $xtpl->parse('main.date');
  }

  if ($sendinfo) {
    if (!empty($fphone)) {
      $xtpl->assign('PHONE', $fphone);
      $xtpl->parse('main.sendinfo.phone');
    }

    if (!empty($faddress)) {
      $xtpl->assign('ADDRESS', $faddress);
      $xtpl->parse('main.sendinfo.address');
    }

    $xtpl->parse('main.sendinfo');
  }

  $xtpl->parse('main');
  return $xtpl->text('main');
}
