<?php

  fscanf(STDIN,'%s',$s);
  $arr = ['a', 'i', 'u', 'e', 'o'];
  
  echo str_replace($arr, "", $s);
