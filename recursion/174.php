<?php
/*
 * 約数を "-" でつなげて出力する再帰関数を作る。
 * divisor(28) --> 1-2-4-7-14-28
 * divisor(29) --> 1-29
 * divisor(720) --> 1-2-3-4-5-6-8-9-10-12-15-16-18-20-24-30-36-40-45-48-60-72-80-90-120-144-180-240-360-720
 */
function divisor(int $number): string{
    $upper_limit = (int) floor(sqrt($number));
    $result_arr = [];
    $i = 1;
    divisorHelper($i, $number, $upper_limit, $result_arr);
    sort($result_arr);
    $ans = '';
    foreach($result_arr as $value) {
        ($value === 1) ? ($ans = '1') : ($ans .= '-'."$value");
    }
    return $ans;
}

function divisorHelper($i, $number, $upper_limit, &$result_arr){
    if ($i > $upper_limit) return;
    if ($number % $i === 0){
        // 元の数が12*12などの平方数の場合、12を一度だけ配列にpushする
        ($i == $number/$i) ? array_push($result_arr, $i) : array_push($result_arr, $i, $number/$i);
    }
    $i++;
    divisorHelper($i, $number, $upper_limit, $result_arr);
    return;
}
