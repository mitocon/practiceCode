<?php

$N = trim(fgets(STDIN));
$S = trim(fgets(STDIN));

if (strpos($S, 'MM') === FALSE && strpos($S, 'FF') === FALSE){
  echo 'Yes'.PHP_EOL;
} else {
  echo 'No'.PHP_EOL;
}
