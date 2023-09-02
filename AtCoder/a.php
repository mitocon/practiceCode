<?php
fscanf(STDIN,'%s',$s);
$corrects = ['ACE','BDF','CEG','DFA','EGB','FAC','GBD'];
$is_equal = array_search($s, $corrects) !== false;

echo $is_equal ? 'Yes' : 'No';
