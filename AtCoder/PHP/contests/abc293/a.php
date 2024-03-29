<?php

$string = trim(fgets(STDIN));
for ($i = 1; $i <= strlen($string); $i+=2) {
    [$string[$i - 1], $string[$i]] = [$string[$i], $string[$i - 1]];
}
echo $string . PHP_EOL;
