<?php

fscanf(STDIN, "%d %d %d", $N, $H, $X);

$arr = array_map('intval', explode(' ', trim(fgets(STDIN))));
for($i=0; $i < $N; ++$i){
    if($H + $arr[$i] >= $X){
      exit(($i+1) . PHP_EOL);
    }
}
