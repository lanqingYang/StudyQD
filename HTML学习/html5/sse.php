<!-- 服务器端代码实现 -->

<?php
header('Countent-Type: text/event-stream');  /* 服务器端事件流语法 Content-Type报头设置为text/evnet-stream */
header('Cache-Control:no-cache');

$time = data('r');
echo "data:The secer time is:{$time}\n\n";  /* echo 直接输出字符串/字符串 */
flush();/* 向页面刷新输出数据 */
?>