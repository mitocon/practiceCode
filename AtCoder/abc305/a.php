<?php
// https://atcoder.jp/contests/abc305/tasks/abc305_a
fscanf(STDIN, "%d", $N);
echo ($N % 5 <= 2) ? $N - $N % 5 : $N - $N % 5 + 5;
