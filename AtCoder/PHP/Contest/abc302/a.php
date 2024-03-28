<?php
// https://atcoder.jp/contests/abc302/tasks/abc302_a

fscanf(STDIN, '%d%d', $A, $B);
echo ($A % $B === 0) ? intdiv($A, $B) : intdiv($A, $B) + 1;
