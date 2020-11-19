// // 1、 给定一个 n 个元素有序的（升序）整型数组 nums 和一个目标值 target  ，写一个函数二分查找 nums 中的 target，如果目标值存在返回下标，否则返回 -1。
 function find(nums,target){
    var num= 0;
    temp=nums[num.length/2];
    while(temp!=target ){
        temp= 
    }
    
 }



// // 2、 纯css实现一个星级评分（编程题es6）
// // 题目描述：
// // 用纯css代码实现一个评分效果

// 要求：
// 纯css实现，不能有js代码
// hover 显示分数，分别是 1分，2分，3分，4分，5分
// 良好的浏览器兼容性
// 点击后能保留选中状态
// 资源：
// 单个星星图片：可用 normal.png（普通）, star.png（选中） 代替


// 3、 写一个函数，可以实现一个数据的深拷
function deepCopy(newobj,oldobj ){
    for(var k in oldobj){
        var item=oldobj[k];
        if(item instanceof Array){
            newobj[k]=[];
            deepCopy(newobj[k],item);
        }else if(item instanceof Object){
            newobj[k]={};
            deepCopy(newobj[k],item);
        }else{
            newobj[k]=item;
        }
    }
}




// 4、  编写一个比较通用的轮询组件，按照一定的时间间隔进行结果查询，查询操作异步返回结果，支持设置超时和自定义查询方法，能够中断轮询。
//      组件具体输入如下：
// 1. 查询执行方法
// 2. 轮询间隔
// 3. 超时时长
// 4. 最多轮询次数
// 组件输出：
// 1. 返回一个promise对象
// 2. 查询方法执行无异常，则轮询结束，返回查询结果
