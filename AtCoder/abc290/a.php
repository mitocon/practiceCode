<?php

fscanf(STDIN, "%d %d", $N, $M);
$arrA = array_map('intval', explode(' ', fgets(STDIN)));
$arrB = array_map('intval', explode(' ', fgets(STDIN)));

$total_score = 0;
foreach ($arrB as $b) {
    $total_score += $arrA[$b - 1];
}

echo $total_score;
