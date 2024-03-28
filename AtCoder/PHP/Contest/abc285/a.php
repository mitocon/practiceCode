<?php

fscanf(STDIN, "%d %d", $a, $b);

$ans = 'No'.PHP_EOL;
if($a * 2 == $b || $a * 2 + 1 ==$b){
    $ans = 'Yes' . PHP_EOL;
}
echo $ans;