<?php

$arr = array_map(fn($n):int => $n, explode(" ", fgets(STDIN)));

// var_dump($arr);

$a = $arr[0];
$b = $arr[1];
$c = $arr[2];

$lcm = gmp_lcm($a, $b);

for ($i = $lcm; $i >= 0; $i -= $a) {
  // 最小公倍数からAを引く
  // それをmod(B)する
  if ($i % $b == $c){
    echo 'YES'.PHP_EOL;
    exit;
  }
}
echo 'NO'.PHP_EOL;
