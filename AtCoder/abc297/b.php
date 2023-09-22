<?php

fscanf(STDIN, "%s", $S);

$posBFirst = strpos($S, 'B');
$posBLast = strrpos($S, 'B');

if (($posBFirst % 2 != $posBLast % 2) && (preg_match('/.*R.*K.*R.*/', $S) == 1)) {
  echo  'Yes'.PHP_EOL;
} else {
  echo  'No'.PHP_EOL;
}
