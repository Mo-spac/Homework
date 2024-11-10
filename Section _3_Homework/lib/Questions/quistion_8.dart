import 'dart:io';

void main() {
  int lowerLimit = 10;
  int upperLimit = 50;
  int? number;

  do {
    print("Enter a number:");
    number = int.tryParse(stdin.readLineSync() ?? '');

    if (number == null) {
      print("Invalid input. Please enter a valid number.");
    }
  } while (number == null);

  if (number >= lowerLimit && number <= upperLimit) {
    print("The number is within the range [$lowerLimit , $upperLimit]");
  } else {
    print("The number is outside the range [$lowerLimit , $upperLimit]");
  }
}
