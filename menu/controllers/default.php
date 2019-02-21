<?php
// loome vajalikud vaade objektid
$mainTmpl = new Template('main');
$mainTmpl->set('title', 'Menu App');
$contentTmpl = new Template('content');

$mainTmpl->set('content', $contentTmpl->parse());
echo $mainTmpl->parse();