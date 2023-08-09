<?php
// 1 最長年数をconstで定義することで、変更を容易にした
// 2 親functionの中の$yearは不要だった
// 3 変更前 $year % 2 === 0 ? $goalMoney *= 1.02 : $goalMoney *= 1.03;
//   変更後 $goalMoney *= ($year % 2 === 0) ? 1.02 : 1.03;
//   条件式が前にある方が可読性があるかも？

const MAX_YEAR = 80;

function howLongToReachFundGoal(int $capitalMoney, int $goalMoney, int $interest): int{
    if ($capitalMoney >= $goalMoney) return 0;
    $resultYear = howLongToReachFundGoalHelper($capitalMoney, $goalMoney, $interest, 0);
    return $resultYear;
}

function howLongToReachFundGoalHelper(int $capitalMoney, int $goalMoney, int $interest, int $year = 0){
    if($year >= MAX_YEAR) return MAX_YEAR;
  
    // 土地の価格
    $goalMoney *= ($year % 2 === 0) ? 1.02 : 1.03;
    
    // 金融商品価格
    (int) $capitalMoney *= (1 + $interest/100);

    $year += 1;
    if($capitalMoney >= $goalMoney) {
        return $year;
    }else{
        return howLongToReachFundGoalHelper($capitalMoney, $goalMoney, $interest, $year);
    }
}
