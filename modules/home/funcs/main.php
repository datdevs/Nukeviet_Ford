<?php

/**
 * @Project NUKEVIET HOME 4.x
 * @Author PHAN TAN DUNG (phantandung92@gmail.com)
 * @Copyright (C) 2016
 * @License GNU/GPL version 2 or any later version
 * @createdate 12/31/2013 0:51
 */

if( ! defined( 'NV_IS_MOD_HOME' ) ) die( 'Stop!!!' );

$page_title = $module_info['custom_title'];
$key_words = $module_info['keywords'];

if( ! $home )
{
	header( "Location:" . nv_url_rewrite( NV_BASE_SITEURL . "index.php?" . NV_LANG_VARIABLE . "=" . NV_LANG_DATA, true ) );
}

include ( NV_ROOTDIR . "/includes/header.php" );
echo nv_site_theme( "" );
include ( NV_ROOTDIR . "/includes/footer.php" );