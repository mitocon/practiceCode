<?php
// https://recursionist.io/dashboard/problems/44
function countSquare(int $x, int $y): int
{
    $m = gcd($x, $y);
    return ($x / $m) * ($y / $m);
}

// 最大公約数を求める再帰関数
function gcd($m, $n)
{
    if ($m % $n === 0) {
        return $n;
    }
    return gcd($n, $m % $n);
}
