<?php
$N = intval(fgets(STDIN));

for($i=0;$i<$N;$i++){
  fscanf(STDIN, "%d %d", $a, $b);
  echo $a+$b.PHP_EOL;
}