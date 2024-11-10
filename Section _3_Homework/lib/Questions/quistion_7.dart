import 'dart:io';

void main() {
  int? number;

  do {
    print("Enter your number");
    number = int.tryParse(stdin.readLineSync()!);

    if (number == null) {
      print("Invalid input. Please enter a valid number.");
    }
  } while (number == null);

  if (number > 0) {
    print("Your number ($number): is Positive");
  } else if (number < 0) {
    print("Your number ($number): is Negative");
  } else if (number == 0) {
    print("Your number is : zero");
  }
}
