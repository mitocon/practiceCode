<?php
fscanf(STDIN, "%d", $n);
fscanf(STDIN, "%s", $s);
printf('%d', max(strpos($s, 'A'), strpos($s, 'B'), strpos($s, 'C')) + 1);
