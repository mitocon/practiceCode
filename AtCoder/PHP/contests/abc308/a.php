<?php
// A - New Scheme
// https://atcoder.jp/contests/abc308/tasks/abc308_a
// AC


  $input_arr = explode(' ', trim(fgets(STDIN)));

  // 小さい順に並んでいるかチェック
  // 元の$input_arrと、ソートした$input_arrが同一か？
  $sort = $input_arr;
  sort($input_arr);
  if ($sort != $input_arr) {
      echo 'No';
      return;
  }

  // 全ての数字が100~675の間で、かつ25で割り切れるならスルー。
  // 引っかかる場合は 'No'
  foreach ($input_arr as $number) {
      if ($number < 100 || $number > 675 || $number % 25 != 0) {
        echo 'No';
        return;
      }
  }
  echo 'Yes';
