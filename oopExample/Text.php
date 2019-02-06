<?php
/**
 * Created by PhpStorm.
 * User: anna.karutina
 * Date: 06.02.2019
 * Time: 10:30
 */

class Text
{
    var $str = '';

    /**
     * Text constructor.
     * @param string $s
     */
    public function __construct($s)
    {
        $this->setText($s);
    }


    function setText($s){
        $this->str = $s;
    }

    function showText(){
        echo '<b>'.$this->str.'</b><br>';
    }
}