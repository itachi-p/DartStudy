import 'dart:math' as math;

import 'package:meta/meta.dart';

void printPi() {
  print("円周率は${math.pi}です。");
}

int subtract(int a, int b) {
  return a - b;
}

double multiply(double a, double b) {
  return a * b;
}

List fibonacci(int num) {
  int f0 = 0;
  int f1 = 1;
  int f2;
  List fibo = [f0, f1];
  for (int i = 0; i < num; i++) {
    f2 = f0 + f1;
    f0 = f1;
    f1 = f2;
    fibo.add(f1);
  }
  return fibo;
}

// The following syntax sugar can also be used only for expressions.
//bool isNoble(int atomicNumber) => _nobleGases[atomicNumber] != null;

// {}で囲った部分の名前付きパラメーターは呼び出し側で名前指定する。
// 同時に引数は任意指定になるが、必須にしたい場合@requiredアノテーション(meta.dartのimportが必要)を付ける。
// 名前付きパラメーター、及びオプショナルパラメーターには初期値(コンパイル時定数)を設定できる。
// bool型でデフォルト値が設定されていない場合、trueでもfalseでもなくnullになる。
void enableFlags(bool bold, {bool italic = false, @required bool hidden}) {}

void aaaBBB(bool a, [bool optionalParameter = false]) {}

main() {
  printPi();
  print(subtract(3, 5));
  print(multiply(8, 9));
  print(fibonacci(10));

  enableFlags(true, italic: true, hidden: false);
  enableFlags(true, hidden: true);
  //enableFlags(true, italic: false); // error(note) "hidden" required
  //enableFlags(hidden: null) // error  1st argument "bold" required

  // Anonymous function
// Dartは関数もオブジェクトとして変数に代入したり、引数として他の関数に渡すことができる。
// 関数はFunction型になる。
      (int num) {
    return true;
  };
  // for example.
  var hey = (name) {
    return 'Hey, $name!';
  };
  print(hey('Tarou'));

  // When specifying return type without relying on type inference
  String Function(String name) hello = (name) {
    return 'Hello, $name!!';
  };
  print(hello('Hanako'));

  // Closure
  Function makeAdder(num addBy) {
    return (num i) => addBy + i;
  }

  var add2 = makeAdder(2);
  var add4 = makeAdder(4);
  assert(add2(3) == 5);
  assert(add4(3) == 7);
}
