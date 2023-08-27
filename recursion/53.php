<?php

function notDivisibleNumbers(int $x, int $y): string{
    $resultArray = [];
    for ($i = 1; $i <= $x; $i++) {
        if($i % $y !== 0) $resultArray[] = $i;
    }
    return implode('-', $resultArray);
}
