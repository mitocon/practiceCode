<?php

function splitAndAdd(int $digits): int{
    if ($digits / 10 === 0) return $digits;
    return splitAndAdd($digits / 10) + $digits % 10;
}
