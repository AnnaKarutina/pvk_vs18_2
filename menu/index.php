<?php
require_once 'conf.php';

$mainTmpl = new Template('main');

$mainTmpl->set('title', 'Menu App');
$mainTmpl->set('content', 'Menu App Content');

echo $mainTmpl->parse();

//echo '<pre>';
//print_r($mainTmpl);
//echo '</pre>';