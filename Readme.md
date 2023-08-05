# PHPコードの改善点
（ファイルパス, 変更前コード, 指摘を受けた理由, 変更後コード を記載）


## 時間計測方法
参考：[【PHP】処理にかかった実行時間を計測する](https://eclair.blog/php-microtime/)
```
<?php
$time_start = microtime(true); //実行開始時間を記録する
// ↓ここから計測したいPHPの処理を記述する↓
//
// ↑ここまで計測したいPHPの処理を記述する↑
$time_end = microtime(true);
$time = $time_end - $time_start;
var_dump($time); //実行時間を出力する
?>
```
## メモリ使用量
参考: [【PHP】メモリ使用量の確認方法](https://it.notepad-blog.com/programming/php/299/)
```
<?php
print "[メモリ使用量]：". memory_get_usage() / (1024 * 1024) ."MB\n"; // 気になる部分に挿入
print "[メモリ最大使用量]：". memory_get_peak_usage() / (1024 * 1024) ."MB\n";
?>
```
