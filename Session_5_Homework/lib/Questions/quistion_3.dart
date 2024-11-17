import 'dart:io';

void main() {
  int number = readNumber();

  if (number % 2 != 0) {
    print("Number $number is Odd");
  } else {
    print("Number $number is Even");
  }
}

// int readNumber() {
//   print("Enter the number");
//   int number = int.parse(stdin.readLineSync()!);
//   return number;
// }

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
