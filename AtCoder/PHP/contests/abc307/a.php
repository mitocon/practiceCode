<?php
// A - Weekly Records
// https://atcoder.jp/contests/abc307/tasks/abc307_a
// AC

  fscanf(STDIN,"%s",$N);
  $input_arr = array_map('intVal', explode(' ', trim(fgets(STDIN))));

  $answer_arr = [];
  // 7個ずつ合計して$answer_arrに入れる
  foreach(array_chunk($input_arr, 7) as $week_num){
    $answer_arr[] = array_sum($week_num);
  }
  echo implode(' ', $answer_arr).PHP_EOL;
