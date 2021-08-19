<?php

if (!defined('NV_IS_FILE_ADMIN')) {
  die('Stop!!!');
}

$order_id = $nv_Request->get_typed_array('order_id', 'post');

foreach ($order_id as $key => $id) {
  $stmt = $db->prepare("UPDATE " . $db_config['prefix'] . "_" . $module_data . "_rows SET order_num=" . intval($key) . " WHERE id=" . $id);
  $stmt->execute();
}

echo "Product order has updated.";
