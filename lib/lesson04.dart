//1、函数定义

//首先，函数也是对象，当没有指定返回值的时候，函数返回null函数定义方法如下：
String sayHello(String name) {
  return "Hello $name!";
}

//is操作符判断对象是否为指定类型，如num、String等
//assert(sayHello is Function)

//断言函数assert(), debug模式下，当表达式的值为false试抛出异常。
//在SDK 1.22.0中，assert()添加了第二个参数message，用于在抛出异常的时候，输出具体信息

//当然，因为Dart中的类型是可选的，也可以这样写
sayHello2(name) {
  return "Hello $name!";
}

//不过建议明确函数的输入类型和返回类型
//方便修改和阅读
//如果函数只是简单的返回一个表达式的值，可以使用箭头语法=>expr;
//它等价于{return expr;}
//所以上面的函数也可以这样写

sayHello3(name) => 'Hello $name!';

//Dart中匿名函数的写法
//(name) => 'Hello $name!';

//于是可以如下定义匿名函数
//var sayHello = (name) => 'Hello $name!';

//2、函数别名
//当看到用typedef定义函数别名的时候，不自觉的想到了函数指针
typedef int Add(int a, int b);

int Subtract(int a, int b) => a - b;

//void main() {
//  print(Subtract is Function);
//  print(Subtract is Add);
//}
//如果上面两个函数的参数和返回值都一样，那么is操作符就会返回true

//3、函数闭包
//下面的代码有一点需要注意
//初始化变量的时候，参数对应的是函数的参数num n
//调用函数类型变量的时候，参数对应的是返回值中的参数num i
Function makeSubtract(num n) {
  return (num i) => n - i;
}

//void main() {
//  var x = makeSubstract(5);
//  print(x(2));
//}

//下面这段很有意思的代码
//需要反应过来一件事：Dart中函数也是对象
//下面的代码应该看得明白，之后会讲控制语句以及容器
//void main() {
//  var callbacks = [];
//  for (var i = 0; i < 3; i++) {
//    callbacks.add(() => print("Save $i"));
//  }
//  callbacks.forEach((c) => c());
//}
