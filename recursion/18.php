<?php

function leetify(string $stringInput): string{

    $replaceMap = [
        'a' => '4',
        'b' => '8',
        'e' => '3',
        'l' => '1',
        'o' => '0',
        's' => '5',
        't' => '7',
        'z' => '2',
    ];

    // str_ireplaceは大文字小文字を区別しない
    $result = str_ireplace(array_keys($replaceMap), array_values($replaceMap), $stringInput);

    return $result;
}

