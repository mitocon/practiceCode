<?php

$N = fgets(STDIN);

if($N == 0){
    echo '0';
    exit;
}

for($i = 0; $i < 9; ++ $i){
    if($N >= 10 ** $i && $N < 10 ** ($i + 1)){
        $ans = (string)(floor($N / (10 ** ($i - 2))) * (10 ** ($i - 2)));
        echo $ans.PHP_EOL;
        exit;
    }
}
