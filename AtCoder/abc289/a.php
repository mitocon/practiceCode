<?php
$S = trim(fgets(STDIN));

$replace1 = str_replace('0', 'x', $S);
$replace2 = str_replace('1', '0', $replace1);
$replace3 = str_replace('x', '1', $replace2);

echo $replace3;
