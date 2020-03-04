double divide(double num1, double num2) => num1 / num2;

main() {
  // When not using try-catch syntax.
  //print(divide(10, null));// Here an error occurs.

  try {
    print(divide(10, null)); // Here an error occurs.
  } catch (e, s) {
    print('Exception details:\n $e');
    print('Stack trace:\n $s');
    //rethrow;
  } finally {
    print("This is fanally proccessing.");
  }
}
