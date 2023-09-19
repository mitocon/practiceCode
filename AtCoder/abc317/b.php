<?php

$N = trim(fgets(STDIN));
$arrA = explode(' ', trim(fgets(STDIN)));
sort($arrA);
foreach($arrA as $k => $v){
    if($v + 1 != $arrA[$k + 1]){
        echo $v + 1;
        exit;
    }
}
