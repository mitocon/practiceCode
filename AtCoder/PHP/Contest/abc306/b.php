<?php
// https://atcoder.jp/contests/abc306/tasks/abc306_b

$aList = fgets(STDIN);
$binaryNumber = strrev(str_replace(" ", "", $a_list));
echo gmp_init($binaryNumber, 2);
