<?php
$n = trim(fgets(STDIN));
$ans = array_fill(1, $n, 0);
for ($i = 0; $i < $n; ++$i) {
    $s = str_split(trim(fgets(STDIN)));
    foreach ($s as $v) {
        if ($v == "o") {
            ++$ans[$i + 1];
        }
    }
}
arsort($ans);
foreach ($ans as $k => $v) {
    echo "$k ";
}