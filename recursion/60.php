<?php

function decimalToHexadecimal(int $decNumber): string{
    return strtoupper(dechex($decNumber));
}
