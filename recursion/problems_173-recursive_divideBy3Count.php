<?php

function divideBy3Count(int $n): int{
    // 関数を完成させてください
    if ($n == 1){
        return 0;
    }
    return 1 + divideBy3Count($n /= 3);
}
