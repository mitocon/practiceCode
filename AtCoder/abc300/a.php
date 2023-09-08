<?php

$a = array_map('intval', explode(' ', trim(fgets(STDIN))));
$c = array_map('intval', explode(' ', trim(fgets(STDIN))));
$N = $a[0];
$ans = $a[1] + $a[2];

for($i=0; $i<$N; $i++){
    if ($c[$i] == $ans) echo $i+1;
}
