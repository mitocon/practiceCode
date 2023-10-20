<?php

fscanf(STDIN, "%d", $N);
fscanf(STDIN, "%s", $S);

$ans = array();

for ($i = 1; $i <= $N - 1; ++$i) {
    for ($j = 0; $j < $N; ++$j) {
        if ($i + $j >= $N || $S[$j] == $S[$j + $i]) {
            break;
        }
    }
    $ans[] = $j;
}

echo implode(PHP_EOL, $ans) . PHP_EOL;