<?php
// https://atcoder.jp/contests/abc303/tasks/abc303_a

$N = intval(trim(fgets(STDIN)));
$T = trim(fgets(STDIN));
$S = trim(fgets(STDIN));
 
$replacement1 = array('o', 'l');
$replacement2 = array('0', '1');
 
$ans1 = str_replace($replacement1, $replacement2, $T);
$ans2 = str_replace($replacement1, $replacement2, $S);
 
echo $ans1 == $ans2 ? "Yes": "No";
