<?php

function doYouFail(string $string): string{
    if(substr_count($string, 'A') >= 3){
        return 'fail';
    }else{
        return 'pass';
    }
}

