<?php
// https://atcoder.jp/contests/abc305/tasks/abc305_b

list($p,$q) = explode(" ",trim(fgets(STDIN)));

// 距離
$distance = array("A"=>0, "B"=>3, "C"=>4, "D"=>8, "E"=>9, "F"=>14, "G"=>23);

$left = min($p,$q);
$right = max($p,$q);

echo $distance[$right] - $distance[$left];
