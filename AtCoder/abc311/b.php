<?php

fscanf(STDIN, "%d %d", $n, $d);

$arr = [];
for ($i = 0; $i < $n; $i++) {
    $line = trim(fgets(STDIN));
    $arr[$i] = str_split($line);
}

$days = str_repeat('o', $d);
foreach ($arr as $value) {
    for ($i = 0; $i < $d; $i++) {
        if (isset($value[$i]) && $value[$i] === 'x') {
            $days = substr_replace($days, 'x', $i, 1);
        }
    }
}


    $max_count = 0;
    $current_count = 0;

    for ($i = 0; $i < strlen($days); $i++) {
        if ($days[$i] === 'o') {
            $current_count++;
            if ($current_count > $max_count) {
                $max_count = $current_count;
            }
        } else {
            $current_count = 0; 
        }
    }

    echo $max_count.PHP_EOL;
