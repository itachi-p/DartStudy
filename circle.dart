import 'dart:math' as math;

class Circle {
  double radius;

  Circle(this.radius);

  double get diameter => radius * 2;
  double get circumference => 2 * math.pi * radius;
  double get area => math.pi * math.pow(radius, 2);
}

void main() {
  // Before Dart 2.1, you had to provide a trailing `.0` – `42.0` – when
  // assigning to fields or parameters of type `double`.
  // A value like `42` was not allowed.

  print(Circle(2)); // Display "Instance of 'Circle'"
  
  print(Circle(5).diameter);
  
  print(Circle(4.0).area); // Before Dart 2.1, the trailing `.0` is required.

  /* With Dart 2.1, you can provide whole-number values when assigning to
   * a double without the trailing `.0`.
  */
  print(Circle(4).circumference); // Legal with Dart 2.1
}
