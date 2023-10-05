<?php

fscanf(STDIN,"%d",$n);

$ans = 0;
for($i=0;$i<$n;$i++){
    [$s] = explode(' ', trim(fgets(STDIN)));
    if ($s == 'For') {
        $ans++;
    }
}

$str = '';
if ($ans * 2 > $n) {
    $str = 'Yes';
} else {
    $str = 'No';
}

echo $str . PHP_EOL;
