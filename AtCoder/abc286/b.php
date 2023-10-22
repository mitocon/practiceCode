<?php

fscanf(STDIN, '%d');
fscanf(STDIN, '%s', $s);

echo str_replace('na', 'nya', $s) . PHP_EOL;