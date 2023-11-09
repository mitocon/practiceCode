<?php
$numArr = str_split(trim(fgets(STDIN)));

$i = 10;
$ans = 'Yes';
foreach ($numArr as $num) {
    if ($num < $i) {
        $i = $num;
    } else {
        $ans = 'No';
        break;
    }
}

echo $ans . PHP_EOL;