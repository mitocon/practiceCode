<?php

fscanf(STDIN, "%d %d %d", $N, $P, $Q);
fscanf(STDIN, "%s %s", $A, $B);
$dishes = explode(' ', trim(fgets(STDIN)));

$arr = [];
for ($i = 0; $i < $n; $i++) {
    fscanf(STDIN, "%s", $s);
    $arr[$i] = str_split($s);
}

echo $A . PHP_EOL;
