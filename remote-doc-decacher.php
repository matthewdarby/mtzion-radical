<?php

$path = dirname(__FILE__).'/';
include_once($path.'modxapi.php');

$modx = new MODxAPI();
$modx->clearCache();
$html = $modx->executeDocument(1);
echo $html;
?>