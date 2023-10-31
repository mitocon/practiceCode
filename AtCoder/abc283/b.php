<?php

$N = (int) fgets(STDIN);
$arr = array_map('intval', explode(" ", trim(fgets(STDIN))));
$Q = (int) fgets(STDIN);
for ($i = 0; $i < $Q; $i++) {
    $q = array_map('intval', explode(" ", trim(fgets(STDIN))));
    $cmd = $q[0];
    if ($q[0] === 1) {
        $k = $q[1];
        $x = $q[2];
        $arr[$k - 1] = $x;
    } else {
        $k = $q[1];
        echo $arr[$k - 1] . PHP_EOL;
    }
}