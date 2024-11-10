import 'dart:io';

void main() {
  print("Enter your first number?");
  int number1 = int.parse(stdin.readLineSync()!);

  print("Enter your third number?");
  int number2 = int.parse(stdin.readLineSync()!);

  int additionResult = add(number1, number2);
  int subtractionResult = subtract(number1, number2);
  int multiplicationResult = multiply(number1, number2);
  double divisionResult = divide(number1, number2);

  print("lib/   Addition: $additionResult");
  print("Addition with optional parameter: ${add(number1, number2, 5)}");
  print("Subtraction: $subtractionResult");
  print("Multiplication: $multiplicationResult");
  print("Division: $divisionResult");
}

int add(int num1, int num2, [int num3 = 0]) {
  return num1 + num2 + num3;
}

int subtract(int num1, int num2) {
  return num1 - num2;
}

int multiply(int num1, int num2) {
  return num1 * num2;
}

double divide(int num1, int num2) {
  return num1 / num2;
}
