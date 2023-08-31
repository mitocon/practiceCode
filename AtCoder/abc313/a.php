<?php
$n = fgets(STDIN);
$arrayP = array_map('intval', explode(' ', fgets(STDIN)));

$firstMan = array_shift($arrayP);
$ans = max($arrayP) - $firstMan + 1;
if ($ans < 0) {
  echo 0;
  exit;
}
echo $ans;
