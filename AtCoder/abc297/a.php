<?php

fscanf(STDIN, '%d %d', $N, $D);
$timeArray = array_map('intval', explode(' ', trim(fgets(STDIN))));
$ans = -1;
for ($i = 1; $i < $N; $i++) {
    if (($timeArray[$i] - $timeArray[$i - 1]) <= $D) {
        $ans = $timeArray[$i];
        break;
    }
}
echo $ans.PHP_EOL;
