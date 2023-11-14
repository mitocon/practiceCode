<?php

fscanf(STDIN, "%s", $s);
$ans = "Yes";
for ($i = 1, $n = strlen($s); $i < $n; $i += 2) {
    if ($s[$i] == "1") {
        $ans = "No";
        break;
    }
}
echo $ans . PHP_EOL;