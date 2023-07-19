<?php
 
list($n,$m) = explode(" ",trim(fgets(STDIN)));
$c = explode(" ",trim(fgets(STDIN)));
$d = explode(" ",trim(fgets(STDIN)));
$p = explode(" ",trim(fgets(STDIN)));
$s = explode(" ",trim(fgets(STDIN)));
 
$coler_arr=[];
for($i=0;$i<$m;$i++){
  $coler_arr[$d[$i]]=$p[$i+1];
}
 
$sum=0;
foreach($c as $ci){
  $sum+=($arr[$ci]??$p[0]);
}
 
echo $sum;
