<?php
fscanf(STDIN, "%d %d %d", $N, $P, $Q);
fscanf(STDIN, "%s %s", $A, $B);
[$N,$K] = array_map('intval',explode(" ", trim(fgets(STDIN))));

$dishes = explode(' ', trim(fgets(STDIN)));

$arr = [];
for ($i = 0; $i < $n; $i++) {
    fscanf(STDIN, "%s", $s);
    $arr[$i] = str_split($s);
}

echo $A . PHP_EOL;

// 12 13 41 12 441 24
$arr = array_map('intval', explode(' ', trim(fgets(STDIN))));
for ($i = 0; $i < $N; ++$i){
    if($H + $arr[$i] >= $X){
        exit(($i+1) . PHP_EOL);
    }
}

// 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100
range(0, 100, 10);
// a, b, c, d, e, f, g, h, i
range('a', 'i');

// ソート rsort($data)
$data = array(15,30,21,100,52);
sort($data);
sort($data, SORT_STRING);

// 配列操作
array_push($stack, "apple", "raspberry");
// array_pop() - 配列の末尾から要素を取り除く
// array_shift() - 配列の先頭から要素を一つ取り出す
// array_unshift() - 一つ以上の要素を配列の最初に加える