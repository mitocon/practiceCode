<?php
$s = trim(fgets(STDIN));
$l = strlen($s);
$ans = 1;
$i = 0;
while ($i < $l) {
    $j = $i;
    while ($j < $l) {
        if ($s[$j] == $s[$i]) {
            $x = substr($s, $i, $j - $i + 1);
            $y = strrev($x);
            if ($x == $y) {
                $ans = max($ans, $j - $i + 1);
            }
        }
        $j++;
    }
    $i++;
}
echo $ans . PHP_EOL;