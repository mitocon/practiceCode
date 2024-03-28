<?php

list($a, $b) = explode(' ', trim(fgets(STDIN)));
echo pow($a, $b) + pow($b, $a) . PHP_EOL;