<?php
// B - Rotate
// https://atcoder.jp/contests/abc309/tasks/abc309_b
// AC
fscanf(STDIN, "%s", $n);
while ($line = fgets(STDIN)){
    $arr[]=trim($line);
};
 
for($i=0; $i<$n; $i++){
    $first[]=substr($arr[$i], 0,1);
    $end[] = substr($arr[$i] , -1);
}


$arr[0] = $first[1].substr($arr[0], 0,$n-1);
echo $arr[0]."\n";

for($i=1; $i<$n-1; $i++){
    $arr[$i] = $first[$i+1].substr($arr[$i], 1,$n-2).$end[$i-1]."\n";
    echo $arr[$i];
}
$arr[$n-1] =substr($arr[$n-1], 1,$n-1).$end[$n-2];
echo $arr[$n-1]."\n";
?>
