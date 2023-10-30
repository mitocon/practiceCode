<?php
[$n, $m] = array_map('intval', explode(' ', trim(fgets(STDIN))));

for ($i = 0; $i < $n; $i++) {
    [$s[]] = explode(' ', trim(fgets(STDIN)));
}
$ans = 0;
for ($i = 0; $i < $n; $i++) {
    for ($j = 0; $j < $n; $j++) {
        if ($i == $j) {
            continue;
        }
        $cnt = 0;
        for ($k = 0; $k < $m; $k++) {
            if ($s[$i][$k] == "o" || $s[$j][$k] == "o")
                $cnt++;
        }
        if ($cnt == $m) {
            $ans++;
        }
    }
}

echo $ans/2 . PHP_EOL;