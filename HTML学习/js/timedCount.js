var i=0;

function timedCount(){
    i=i+1;
    postMessage(i);/* 向html页面传回一段消息 */
    setTimeout("timedCount()",500);/* 定时器 每隔500ms，执行一次timedCount */
}

timedCount();