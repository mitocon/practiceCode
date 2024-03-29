<?php
// https://atcoder.jp/contests/abc301/tasks/abc301_a

fscanf(STDIN, '%d', $N);
$gameArray = str_split(rtrim(fgets(STDIN)));

$wins = [
    'T' => 0,
    'A' => 0,
];
$last = [
    'T' => -1,
    'A' => -1,
];
foreach ($gameArray as $i => $s) {
    $wins[$s]++;
    $last[$s] = $i;
}
if ($wins['T'] === $wins['A']) {
    echo ($last['T'] < $last['A']) ? 'T' : 'A';
} else {
    echo ($wins['T'] > $wins['A']) ? 'T' : 'A';
}
