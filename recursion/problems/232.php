<?php
// 購入できる最大のパンの個数
// 再帰関数

function maxBread(int $money, int $price, int $sticker): int{
    // 最初に買うパンの個数
    $bread_count = intdiv($money, $price);
    // 最初に持っているステッカー枚数
    $restSt = $bread_count;
    return $bread_count + buyBySt($restSt, $sticker);
}

/* 再帰関数で、ステッカーでパンを買い続ける関数
/  $restSt  手持ちのステッカー
/  $sticker 購入に必要なステッカー枚数
/  return パンの個数
*/
function buyBySt(int $restSt, int $sticker): int{
    if($restSt < $sticker) return 0;
    // ステッカーでパンを買う
    $bread_count = intdiv($restSt, $sticker);

    // return 今回買ったパン + buyBySt()
    // 次に渡すbuyBySt()の引数
    //   第一引数 今回購入したパンについていたステッカー枚数 + 購入後の余り
    //   第二引数 購入に必要なステッカー枚数
    return $bread_count + buyBySt($bread_count + $restSt % $sticker, $sticker);
}
