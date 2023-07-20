<?php
  $n=trim(fgets(STDIN));

  for($i=0; $i<$n; $i++){
    $s[$i]=trim(fgets(STDIN));
  }
  
  $answer = "No";
  
  for($i=0; $i<$n; $i++){
    for($j=0; $j<$n; $j++){
      if($i==$j) continue;
      $tmp = $s[$i].$s[$j];
      $tmp_reverse = strrev($tmp);
      if($tmp==$tmp_reverse){
        $answer = "Yes";
        break 2;
      }
    }
  }
  
  echo $answer."\n";
