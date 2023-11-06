<?php

$N = (int) trim(fgets(STDIN));

$s = '';
for ($i = 0; $i <= $N; $i++) {
    $array = [];
    for ($j = 1; $j < 10; $j++) {
        if ($N % $j == 0 && $i % ($N / $j) == 0) {
            $array[] = $j;
        }
    }
    if (count($array)) {
        $s .= min($array);
    } else {
        $s .= '-';
    }
}

echo $s . PHP_EOL;