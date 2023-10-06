<?php

fscanf(STDIN, "%d %d", $n, $m);

$s = [];
for ($i = 1; $i <= $n; $i++) {
    fscanf(STDIN, "%d", $s[$i]);
}

$t = [];
for ($i = 1; $i <= $m; $i++) {
    fscanf(STDIN, "%d", $t[$i]);
}

$ans = 0;
for ($i = 1; $i <= $n; $i++) {
    if (in_array(substr($s[$i], -3), $t)) {
        $ans++;
    }
}

echo $ans . PHP_EOL;