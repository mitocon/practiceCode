<?php

$board = [];
for ($i=0; $i<8; $i++) {
    $line = trim(fgets(STDIN));
    $board[$i] = str_split($line);
}

$alpha = ['a','b','c','d','e','f','g','h'];
for ($i=0; $i<8; $i++) {
    for ($j=0; $j<8; $j++) {
        if ($board[$i][$j] == "*") {
            echo $alpha[$j] . (8 - $i);
        }
    }
}
