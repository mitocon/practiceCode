<?php

$N = fgets(STDIN);
$arr = explode(' ', trim(fgets(STDIN)));
$haystack = ['and', 'not', 'that', 'the', 'you'];

$ans = 'No';
foreach ($arr as $word) {
    if (in_array($word, $haystack)) {
        $ans = 'Yes';
        break;
    }
}
echo $ans . PHP_EOL;
