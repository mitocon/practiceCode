<?php
// https://atcoder.jp/contests/abc304/tasks/abc304_a

fscanf(STDIN, "%d", $n);

$s_arr = [];
$a_arr = [];

for($i=0; $i<$n; $i++){
    fscanf(STDIN, "%s %d", $s_arr[$i], $a_arr[$i]);
}

$min = min($a_arr);
$min_index = array_search($min, $a_arr);

$new_array = array_merge($s_arr, $s_arr);

for($i=0; $i<$n; $i++){
    echo $new_array[$i + $min_index]."\n";
}
