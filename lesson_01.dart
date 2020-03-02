// Define a function.
printInteger(int aNumber) {
  print('The number is $aNumber.'); // Print to console.
}

// This is where the app starts executing.
main() {
  var number01 = 5; // Declare and initialize a variable.('var' or 'int')

  String piAsString = 3.14159.toStringAsFixed(2); // double -> String
  assert(piAsString == '3.14');

  num number02 = num.parse(piAsString); // 'int' & 'double' are subtype or 'num'
  print(number02);
  number02 += number01; // int + double -> double
  print(number02);

  var number03 = int.parse('13');
  assert(number03 == 13);

  printInteger(number02.toInt() + number03); // Call a function.
}
