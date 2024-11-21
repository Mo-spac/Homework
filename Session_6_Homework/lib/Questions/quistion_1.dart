import 'dart:io';

void main() {
  int number = readNumber();

  printPrimeNumber(number);

  print("Factorial: ${factorial(number)}");
}

int readNumber() {
  int? number;
  while (number == null) {
    print("Enter a number:");
    String? num = stdin.readLineSync();

    number = int.tryParse(num ?? '');
    if (number == null) {
      print("Invalid number. Please enter a valid number.");
    }
  }
  return number;
}

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }
  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

void printPrimeNumber(int number) {
  if (isPrime(number)) {
    print("Number $number is Prime");
  } else {
    print("Number $number is not Prime");
  }
}

int factorial(int number) {
  int result = 1;
  for (int i = 1; i <= number; i++) {
    result *= i;
  }
  return result;
}
