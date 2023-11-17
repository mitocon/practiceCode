<?php

fgets(STDIN);
$array = explode(" ", trim(fgets(STDIN)));
$c = count(array_unique($array));
if ($c == 1){
    echo "Yes";
} else {
    echo "No";
}