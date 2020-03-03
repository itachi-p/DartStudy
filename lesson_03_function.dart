import 'dart:math' as math;

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

main() {
  printPi();
  print(subtract(3, 5));
  print(multiply(8, 9));
  print(fibonacci(10));
}
