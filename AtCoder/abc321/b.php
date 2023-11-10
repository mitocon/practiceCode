<?php
## WA

fscanf(STDIN, "%d %d", $N, $X);
$array = explode(' ', trim(fgets(STDIN)));

$sum = array_sum($array);
$max = max($array);
$min = min($array);
$ans = 0;

$y = $sum - $max - $min;
$dif = $X - $y;


if ($dif <= $min){
    // 0で$Xを超える場合
    $ans = 0;
} elseif ($dif > $max) {
    // $Xを超えることができない場合
    $ans = -1;
} else {
    $ans = $dif;
}

echo $ans . PHP_EOL;
