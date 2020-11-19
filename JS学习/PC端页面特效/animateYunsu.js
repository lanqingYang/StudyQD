function animate(obj, target, callback) {
    //给不同的元素指定了不同的定时器，通过给obj添加属性的方式，而不用var声明 就不用每次都去开辟空间，节省内存
    //不断点击按钮，这个元素速度会越来越快，因为开启了太多定时器
    //解决方案： 让元素只有一个定时器  每次都删除原来的定时器
    //   console.log(callback); //function 调用: callback()

    clearInterval(obj.timer);
    obj.timer = setInterval(fn, 30);

    function fn() {
      //步长值写到定时器的里面 步长值写成整数
      // var step = Math.ceil((target - obj.offsetLeft) / 40);
      var step = (target - obj.offsetLeft) / 40;
      //正向走去大 倒退取小
      step = step > 0 ? Math.ceil(step) : Math.floor(step);
      if (obj.offsetLeft == target) {
        //停止动画本质是停止定时器
        clearInterval(obj.timer);
        //回调函数写到定时器里面
        if (callback) {
          //调用函数
          callback();
        }
      }
      obj.style.left = obj.offsetLeft + step + "px";  //速度逐渐变缓慢
      // obj.style.left = obj.offsetLeft + 10 + "px";
    }
  }