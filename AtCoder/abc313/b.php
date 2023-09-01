<?php
list($n,$m)=explode(" ",trim(fgets(STDIN)));

$arr_player = range(1, $n);
$arr_looser = [];
for ($i = 1; $i <= $m; $i++) {
  list($a,$b)=explode(" ",trim(fgets(STDIN)));
  $arr_looser[] = $b;
}
$notLooser = array_diff($arr_player, $arr_looser);

if (count($notLooser) > 1) {
  $ans = -1;
} else {
  $ans = array_shift($notLooser);
}

echo $ans.PHP_EOL;
