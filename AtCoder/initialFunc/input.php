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

// 12 13 41 12 441 24
$arr = array_map('intval', explode(' ', trim(fgets(STDIN))));
for ($i = 0; $i < $N; ++$i){
    if($H + $arr[$i] >= $X){
        exit(($i+1) . PHP_EOL);
    }
}
