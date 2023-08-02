<?php

function isPalindrome(string $stringInput): bool{
    $str = strtolower(preg_replace('/　|\s+/', '', $stringInput));
    if ($str === strrev($str)) {
        return true;
    } else {
        return false;
    }
}

