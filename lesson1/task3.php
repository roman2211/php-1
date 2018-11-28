<?php
/**
 * Created by PhpStorm.
 * User: Роман Бикташев
 * Date: 25.11.2018
 * Time: 19:24
 */
$a = 1;
$b = 2;
echo "a = $a"; 
echo "b = $b";

$a = $a + $b;

$b = $a - $b;
$a = $a - $b;


echo "a = $a";
echo "b = $b";