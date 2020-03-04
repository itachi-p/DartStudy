// When a class implements a call method, can call the instance as if it were a function.
class WannabeFunction {
  String call(String a, String b, String c) => '$a $b $c!';
}

main() {
  var instance = WannabeFunction();
  var out = instance("Hi", "there", "gang");
  print('$out');
}
