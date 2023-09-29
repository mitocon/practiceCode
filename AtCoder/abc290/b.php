<?php

[$N,$K] = array_map('intval', explode(" ", trim(fgets(STDIN))));
$S = trim(fgets(STDIN));

for($i = 0; $i < $N; $i++){
    if($S[$i] === 'o'){
        $K--;
        if($K < 0){
            $S[$i] = 'x';
        }
    }
}
echo $S . PHP_EOL;
