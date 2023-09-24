<?php

fscanf(STDIN, '%d%d', $N, $M);

$good = [];
for ($i = 0; $i <= $M - 1; $i++) {
    $a = array_map('intval', explode(' ', rtrim(fgets(STDIN))));
    for ($j = 0; $j < $N - 1; $j++) {
        $good[$a[$j]][$a[$j + 1]] = 1;
    }
}

$nogood = 0;
for ($i = 1; $i <= $N - 1; $i++) {
    for ($j = $i + 1; $j <= $N; $j++) {
        if (!isset($good[$i][$j]) && !isset($good[$j][$i])) {
            $nogood++;
        }
    }
}

echo $nogood;
