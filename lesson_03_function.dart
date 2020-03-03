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

main() {
  printPi();
  print(subtract(3, 5));
  print(multiply(8, 9));
}
