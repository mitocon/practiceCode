<?php
// A - Nine
// https://atcoder.jp/contests/abc309/tasks/abc309_a
// AC

fscanf(STDIN, "%s %s", $A, $B);
$BB = (int) $B - 1;
$AA = (int) $A - 1;

// PHPは整数の商を出す演算子はない。intdiv()を使う
if ((intdiv($BB , 3) === (intdiv($AA , 3))) && ($BB % 3 - $AA % 3 <= 1)) {
    echo 'Yes' . PHP_EOL;
} else {
    echo 'No' . PHP_EOL;
}
