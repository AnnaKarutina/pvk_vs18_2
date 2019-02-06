<?php
/**
 * Created by PhpStorm.
 * User: anna.karutina
 * Date: 06.02.2019
 * Time: 10:55
 */

require_once 'Text.php';

class ColorText extends Text
{
    var $color = '';

    /**
     * ColorText constructor.
     * @param string $s
     * @param string $c
     */
    public function __construct($s, $c)
    {
        parent::__construct($s);
        $this->setColor($c);
    }


    function setColor($c){
        $this->color = $c;
    }
}