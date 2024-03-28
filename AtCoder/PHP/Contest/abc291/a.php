<?php

$S = str_split(trim(fgets(STDIN)), 1);
$ans = 1;
foreach ($S as $index => $word) {
  if (ctype_upper($word)) $ans += $index;
};
echo $ans;
