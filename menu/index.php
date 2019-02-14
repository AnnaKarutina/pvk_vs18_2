<?php
require_once 'conf.php';
// loome vajalikud vaade objektid
$mainTmpl = new Template('main');
$contentTmpl = new Template('content');
$cardTmpl = new Template('card');
$cardHeaderTmpl = new Template('header');
$cardDataTmpl = new Template('data');
$listTmpl = new Template('list');

$mainTmpl->set('title', 'Menu App');

$cardDataTmpl->add('dish_list', $listTmpl->parse());

$cardTmpl->set('card_header', $cardHeaderTmpl->parse());
$cardTmpl->set('card_data', $cardDataTmpl->parse());


$contentTmpl->add('cards', $cardTmpl->parse());
$contentTmpl->add('cards', $cardTmpl->parse());
$contentTmpl->add('cards', $cardTmpl->parse());
$contentTmpl->add('cards', $cardTmpl->parse());

$mainTmpl->set('content', $contentTmpl->parse());

echo $mainTmpl->parse();

//echo '<pre>';
//print_r($mainTmpl);
//echo '</pre>';