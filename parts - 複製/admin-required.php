<?php

if(! isset($_SESSION)) {
  //如果尚未啟動 SESSION 的功能 就啟動
session_start();
}

if(! isset($_SESSION["admin"])) {
  //如果尚未登入管理者 跳轉燈入夜面
header("Location: login.php");
exit(); 
}