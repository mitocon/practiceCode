<?php
// 2進数で 2の補数を求める
// キャリーがある場合は先頭に1をつけて9bitで出力する
// 00000000 --> 100000000
// 01110101 -->  10001011

function twosComplement(string $bits): string{
    // 入力ビットを反転させる
    $invertedBits = '';
    for ($i = 0; $i < strlen($bits); $i++) {
        $invertedBits .= $bits[$i] == '0' ? '1' : '0';
    }
    
    // 反転させたビットに1を加える
    $result = '';
    $carry = 1;
    for ($i = strlen($invertedBits) - 1; $i >= 0; $i--) {
        $bit = (int)$invertedBits[$i] ^ $carry;
        $carry = (int)$invertedBits[$i] && $carry;
        $result = $bit . $result;
    }
    
    return $carry.$result;
}
