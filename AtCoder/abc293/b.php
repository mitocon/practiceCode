<?php
fscanf(STDIN, "%d", $N);
$a = array_map('intval', explode(" ", trim(fgets(STDIN))));
$map = array_fill(1, $N, false);
for($i=1;$i<=$N;++$i){
    if($map[$i]){
      continue;
    }
    $map[$a[$i-1]] = true;
}

$ans = [];
for($i=1;$i<=$N;++$i){
    if(!$map[$i]){
      $ans[] = $i;
    }
}

echo count($ans) . PHP_EOL;
echo implode(" ",$ans) . PHP_EOL;
