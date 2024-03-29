<?php

fscanf(STDIN, "%d %d %d", $n, $m, $p);
$ans = floor(($n - $m) / $p) + 1;
if ($n - $m < 0) {
    $ans = 0;
}
echo $ans . PHP_EOL;