import 'dart:math' as math;

class Circle {
  double radius;

  Circle(this.radius);

  double get diameter => radius * 2;
  double get circumference => 2 * math.pi * radius;
  double get area => math.pi * math.pow(radius, 2);
}

void main() {

  print(Circle(2)); // Display "Instance of 'Circle'"
  
  print(Circle(5).diameter);
  print(Circle(4.0).area); // Before Dart 2.1, the trailing `.0` is required.
  print(Circle(4).circumference); // Legal with Dart 2.1
}

