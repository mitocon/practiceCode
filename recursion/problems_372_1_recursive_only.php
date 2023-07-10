<?php
// ver.1 再帰関数オンリー
function multipleOfTwoTotal(int $n): int{
    if($n === 0){
        return 0;
    }else if($n === 1){
        return 2;
    }
    $result = multipleOfTwo($n);
    $n -= 1;
    return $result + multipleOfTwoTotal($n);
}

function multipleOfTwo(int $n): int{
    if($n === 1){
        return 2;
    }
    $result = 2 * $n;
    $n -= 1;
    return $result + multipleOfTwo($n);
}
