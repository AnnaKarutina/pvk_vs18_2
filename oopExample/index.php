<?php
/**
 * Created by PhpStorm.
 * User: anna.karutina
 * Date: 06.02.2019
 * Time: 10:35
 */
require_once 'Text.php';

$hello1 = new Text('Hello Word');

echo '<pre>';
print_r($hello1);
echo '</pre>';

$hello1->showText();

$hello1->setText('Another string');

echo '<pre>';
print_r($hello1);
echo '</pre>';

$hello1->showText();