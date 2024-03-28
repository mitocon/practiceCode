<?php

fscanf(STDIN, "%d", $n);

for ($i = 0; $i < $n; $i++) {
    echo chr(65 + $i);
}
