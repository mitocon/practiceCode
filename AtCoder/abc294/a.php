<?php

$N = fgets(STDIN);
$arr = explode(' ', trim(fgets(STDIN)));

$ans = [];
foreach ($arr as $num) {
    if ($num % 2 == 0) {
        $ans[] = $num;
    }
}

echo join(' ', $ans).PHP_EOL;
