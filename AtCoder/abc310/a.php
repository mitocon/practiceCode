<?php
fscanf(STDIN, "%d %d %d", $N, $P, $Q);
$dishes = explode(' ', trim(fgets(STDIN)));
 
$min_dish = min($dishes);
$condition = ($Q + $min_dish) < $P;
 
if ($condition) {
    echo $Q + $min_dish;
}else {
    echo $P;
}
