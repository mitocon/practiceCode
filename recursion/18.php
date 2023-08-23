<?php

function leetify(string $stringInput): string{
    
    $result = str_replace('a', '4', $stringInput);
    $result = str_replace('A', '4', $result);
    $result = str_replace('b', '8', $result);
    $result = str_replace('B', '8', $result);
    $result = str_replace('e', '3', $result);
    $result = str_replace('E', '3', $result);
    $result = str_replace('l', '1', $result);
    $result = str_replace('L', '1', $result);
    $result = str_replace('o', '0', $result);
    $result = str_replace('O', '0', $result);
    $result = str_replace('s', '5', $result);
    $result = str_replace('S', '5', $result);
    $result = str_replace('t', '7', $result);
    $result = str_replace('T', '7', $result);
    $result = str_replace('z', '2', $result);
    $result = str_replace('Z', '2', $result);

    return $result; 
}

