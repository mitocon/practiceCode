<?php

fscanf(STDIN, '%d %d', $N, $T);
$C = explode(' ', trim(fgets(STDIN)));
$R = explode(' ', rtrim(fgets(STDIN)));

$map = [];

foreach ($R as $i => $r) {
    $color = $C[$i];
    $map[$color][$r] = $i;
}

if (!isset($map[$T])) {
    $T = array_keys($map)[0];
}

krsort($map[$T]);
echo reset($map[$T]) + 1;
