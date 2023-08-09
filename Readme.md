# PHPコードの改善点
ChatGPTにコードを渡し、レビューしてもらった。  
以下にレビューを受けたポイントをまとめている。  

## レビューポイント
- 配列内のString型の連結は、imploadの方がパフォーマンスが上がる。可読性も高い。
   
  変更前 [recursion/174.php](https://github.com/mitocon/practiceCode/blob/main/recursion/174.php)  
  ```php
  foreach($result_arr as $value) {
    ($value === 1) ? ($ans = '1') : ($ans .= '-'."$value");
  }
  ```
  変更後 [recursion/174(1).php](https://github.com/mitocon/practiceCode/blob/main/recursion/174(1).php)  
  ```php
  $ans = impload("-", $result_arr);
  ```
- 変更する可能性がある数字をconstで定義することで、将来の変更を容易にした [recursion/49.php](https://github.com/mitocon/practiceCode/blob/main/recursion/49.php)
  
  変更前 [recursion/49.php](https://github.com/mitocon/practiceCode/blob/main/recursion/49.php)  
  ```php
  // 補足  上限となる 80 がどこに定義されているか探すのが大変
  function howLongToReachFundGoal(int $capitalMoney, int $goalMoney, int $interest): int{
    (int) $year = 0;
    略
  }

  function howLongToReachFundGoalHelper(int $capitalMoney, int $goalMoney, int $interest, int $year){
    if($year >= 80) return 80;
    略
  }
  ```
  変更後 [recursion/49(1).php](https://github.com/mitocon/practiceCode/blob/main/recursion/49(1).php)  
  ```php
  // 補足 MAX_YEAR の名前から上限値だと推測できる
  const MAX_YEAR = 80;

  function howLongToReachFundGoal(int $capitalMoney, int $goalMoney, int $interest): int{
    略
  }
  
  function howLongToReachFundGoalHelper(int $capitalMoney, int $goalMoney, int $interest, int $year = 0){
    if($year >= MAX_YEAR) return MAX_YEAR;
    略
  }
  ```  

- 行頭で「このコードで __何を変更するのか__ 」が分かる方が可読性が高い。  
  例は三項演算子を使用した場合。どちらも$goalMoneyを変更しようとしている。  

  変更前 [recursion/49.php](https://github.com/mitocon/practiceCode/blob/main/recursion/49.php)    
  ```php
  $year % 2 === 0 ? $goalMoney *= 1.02 : $goalMoney *= 1.03;
  ```
  変更後 [recursion/49(1).php](https://github.com/mitocon/practiceCode/blob/main/recursion/49(1).php)  
  ```php
  $goalMoney *= ($year % 2 === 0) ? 1.02 : 1.03;
  ```

---

## パフォーマンス計測時の参考資料
### 時間計測方法
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
### メモリ使用量
参考: [【PHP】メモリ使用量の確認方法](https://it.notepad-blog.com/programming/php/299/)
```
<?php
print "[メモリ使用量]：". memory_get_usage() / (1024 * 1024) ."MB\n"; // 気になる部分に挿入
print "[メモリ最大使用量]：". memory_get_peak_usage() / (1024 * 1024) ."MB\n";
?>
```
