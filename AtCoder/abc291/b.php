<?php

fscanf(STDIN,"%d",$N);
$array = explode(' ',trim(fgets(STDIN)));

$count = count($array);

sort($array);
$array = array_splice($array,$N);

rsort($array);
$array = array_splice($array,$N);

$total = 0;
foreach($array as $item){
    $total += (int)$item;
}

echo $total / ($count - $N * 2);
