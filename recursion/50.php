<?php
/**
* 各桁の合計$resultを計算する。
* $resultが一桁ではない場合、その$resultを引数にしてもう一度実行する。
* $resultが一桁の場合、新たに実行はしない。
* 最後に、各実行で出力した$resultの和を出力する。
*
* @param int $digits 15桁以下の自然数
* @return int $resultの合計
*/
function recursiveDigitsAdded(int $digits): int{
    preg_match_all("([0-9])", $digits, $num);
    $result = array_sum($num[0]);
    if($result < 10){
        return $result;
    }else{
        return $result + recursiveDigitsAdded($result);
    }
}

