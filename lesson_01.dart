// Define a function.
printInteger(int aNumber) {
  print('The number is $aNumber.'); // Print to console.
}

// This is where the app starts executing.
main() {
  var number01 = 42; // Declare and initialize a variable.

  // 'int' & 'double' are subtype or 'num'
  num number02 = 1;
  number02 = 1.1;

  printInteger(number01 + number02.toInt()); // Call a function.
}
