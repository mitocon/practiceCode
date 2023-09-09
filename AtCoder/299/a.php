<?php
$N = trim(fgets(STDIN));
$S = trim(fgets(STDIN));

$starIndex = strpos($S, '*');
$beforeStar = substr($S, 0, $starIndex);
$afterStar = substr($S, $starIndex + 1);

if (strpos($beforeStar, '|') !== false && strpos($afterStar, '|') !== false) {
    echo 'in' . PHP_EOL;
} else {
    echo 'out' . PHP_EOL;
}
