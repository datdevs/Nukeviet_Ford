<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES <contact@vinades.vn>
 * @Copyright (C) 2014 VINADES. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Apr 20, 2010 10:47:41 AM
 */
if (!defined('NV_IS_FILE_ADMIN')) {
    die('Stop!!!');
}

$sign_content = '<br /><br />-------------<br />Best regards,<br />';
$sign_content .= '<h3>' . $global_config['site_name'] . '</h3>';
$sign_content .= '<strong>' . $admin_info['full_name'] . '</strong><br />';
$sign_content .= 'Email: <strong>' . $admin_info['email'] . '</strong><br />';
$sign_content .= 'Số điện thoại: <strong>' . $global_config['site_phone'] . '</strong><br />';