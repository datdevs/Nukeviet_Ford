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

$db_config['dbhost'] = 'localhost';
$db_config['dbport'] = '';
$db_config['dbname'] = 'db_ford';
$db_config['dbsystem'] = 'db_ford';
$db_config['dbuname'] = 'root';
$db_config['dbpass'] = 'mysql';
// $db_config['dbname'] = 'vujitech_cuongford';
// $db_config['dbsystem'] = 'vujitech_cuongford';
// $db_config['dbuname'] = 'vujitech_mysql';
// $db_config['dbpass'] = 'Dinhquoc1112@';
// $db_config['dbname'] = 'u404491494_ford';
// $db_config['dbsystem'] = 'u404491494_ford';
// $db_config['dbuname'] = 'u404491494_ford';
// $db_config['dbpass'] = 'Iloveyou8520!!!';
$db_config['dbtype'] = 'mysql';
$db_config['collation'] = 'utf8mb4_unicode_ci';
$db_config['charset'] = 'utf8mb4';
$db_config['persistent'] = false;
$db_config['prefix'] = 'vuj';

$global_config['site_domain'] = '';
$global_config['name_show'] = 0;
$global_config['idsite'] = 0;
$global_config['sitekey'] = 'af77910680336536002b11fae937484d';// Do not change sitekey!
$global_config['hashprefix'] = '{SSHA512}';
$global_config['cached'] = 'files';
$global_config['session_handler'] = 'files';
$global_config['extension_setup'] = 3; // 0: No, 1: Upload, 2: NukeViet Store, 3: Upload + NukeViet Store
// Readmore: https://wiki.nukeviet.vn/nukeviet4:advanced_setting:file_config