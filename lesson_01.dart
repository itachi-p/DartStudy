// Define a function.
printInteger(int aNumber) {
  print('The number is $aNumber.'); // Print to console.
}

// This is where the app starts executing.
main() {
  var number01 = 5; // Declare and initialize a variable.
  num number02 = number01 + 3.14159; // 'int' & 'double' are subtype or 'num'
  var number03 = int.parse('13');
  assert(number03 == 13);

  printInteger(number02.toInt() + number03); // Call a function.
}
