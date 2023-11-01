<?php
fscanf(STDIN,"%s",$S);

$ans = "No";
if (preg_match("#^([A-Z]{1})([0-9]{6})([A-Z]{1})$#", $S, $m)) {
    if ($m[2] >= 100000) {
        $ans = "Yes";
    }
}

echo $ans.PHP_EOL;