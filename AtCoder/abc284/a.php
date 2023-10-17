<?php

$N = intval(fgets(STDIN));

for ($i = 0; $i < $N; $i++) {
    $array[] = fgets(STDIN);
}
echo implode("", array_reverse($array));