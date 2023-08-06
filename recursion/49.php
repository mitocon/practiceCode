<?php

function howLongToReachFundGoal(int $capitalMoney, int $goalMoney, int $interest): int{
    (int) $year = 0;
    if ($capitalMoney >= $goalMoney) return 0;
    $resultYear = howLongToReachFundGoalHelper($capitalMoney, $goalMoney, $interest, $year);
    return $resultYear;
}

function howLongToReachFundGoalHelper(int $capitalMoney, int $goalMoney, int $interest, int $year){
    if($year >= 80) return 80;
  
    // 土地の価格
    $year % 2 === 0 ? $goalMoney *= 1.02 : $goalMoney *= 1.03;

    // 金融商品価格
    (int) $capitalMoney *= (1 + $interest/100);

    $year += 1;
    if($capitalMoney >= $goalMoney) {
        return $year;
    }else{
        return howLongToReachFundGoalHelper($capitalMoney, $goalMoney, $interest, $year);
    }
}
