<?php

$N = trim(fgets(STDIN));
$S = trim(fgets(STDIN));

if (strpos($S, 'x') !== FALSE || strpos($S, 'o') === FALSE){
  echo 'No'.PHP_EOL;
} else {
  echo 'Yes'.PHP_EOL;
}
