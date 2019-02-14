<?php
require_once 'conf.php';
// loome vajalikud vaade objektid
$mainTmpl = new Template('main');
$contentTmpl = new Template('content');

$mainTmpl->set('title', 'Menu App');


$mainTmpl->set('content', $contentTmpl->parse());

echo $mainTmpl->parse();

//echo '<pre>';
//print_r($mainTmpl);
//echo '</pre>';