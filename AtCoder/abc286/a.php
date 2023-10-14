<?php

fscanf(STDIN, "%d %d %d %d %d", $n, $p, $q, $r, $s);

$arr = array_map("intval", explode(" ", trim(fgets(STDIN))));

$arrA = array_slice($arr, $p - 1, $q - $p + 1);
$arrB = array_slice($arr, $r - 1, $s - $r + 1);

array_splice($arr,$p - 1, $q - $p + 1,$arrB);
array_splice($arr,$r - 1, $s - $r + 1,$arrA);


echo implode(" ", $arr);
