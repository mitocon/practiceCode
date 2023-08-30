<?php

$m = intval(fgets(STDIN)); 
$daysArray = array_map('intval', explode(' ', fgets(STDIN)));

// 真ん中の日
$middleDay = (array_sum($daysArray) + 1) / 2;

$month = 0;
$restDay = $middleDay;
$modDay = 0;
foreach ($daysArray as $days) {
  $month += 1;
  if ($restDay - $days > 0) {
    $restDay -= $days;
  } else {
    $modDay = $restDay;
    break;
  }
}

echo $month . ' ' . $modDay;
