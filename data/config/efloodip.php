<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC <contact@vinades.vn>
 * @Copyright (C) 2020 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Thu, 31 Dec 2020 04:32:38 GMT
 */

if (!defined('NV_MAINFILE')) {
    die('Stop!!!');
}

$array_except_flood_site = [];
$array_except_flood_site['127.0.0.1'] = ['ip6' => 0, 'mask' => "//", 'begintime' => 1609389158, 'endtime' => 0];

$array_except_flood_admin = [];
