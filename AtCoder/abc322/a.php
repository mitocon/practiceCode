<?php
$n = fgets(STDIN);
$text = fgets(STDIN);

$pos = strpos($text, "ABC");
if ($pos === false) {
    echo "-1\n";
} else {
    echo ($pos + 1) . "\n";
}