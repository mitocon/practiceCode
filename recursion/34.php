<?php
/*
 * $passwordのバリデーション
 * 以下の5条件を満たす場合trueを返す
 * 
 * スペースがない
 * 大文字と小文字を含む
 * 数字を含む
 * 文字列が 6 以上
 * 記号は含まない
 */

function isValidPassword(string $password): bool{
    // 半角スペースがあればfalse
    if(preg_match('/ /', $password) == 1) return false;
    // 小文字を含む
    if(!(preg_match('/[a-z]/', $password) > 0)) return false;
    // 大文字を含む
    if(!(preg_match('/[A-Z]/', $password) > 0)) return false;
    // 数字を含む
    if(!(preg_match('/\d/', $password) > 0)) return false;
    // 文字列が6文字以上である
    if(!(strlen($password) >= 6)) return false;
    // 記号は含まない
    if(preg_match('/[^a-zA-Z0-9]/', $password) == 1) return false;
    return true;
}

