import 'dart:io';

void main() {
  double number1 = readNumber("Enter first number");
  double number2 = readNumber("Enter second number");

  print(addition(number1, number2));
  print(subtraction(number1, number2));
  print(multiplication(number1, number2));
  print(division(number1, number2));
  ;
}

double readNumber(String entery) {
  print(entery);
  return double.parse(stdin.readLineSync()!);
}

double addition(double num1, double num2) {
  return num1 + num2;
}

double subtraction(double num1, double num2) {
  return num1 - num2;
}

double multiplication(double num1, double num2) {
  return num1 * num2;
}

double division(double num1, double num2) {
  return num1 / num2;
}
