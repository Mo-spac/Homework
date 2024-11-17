import 'dart:io';

void main() {
  for (int i = 1; i <= 20; i++) {
    if (i % 2 == 0) {
      print("Number($i) : is even");
    } else {
      print("Number($i) : is odd");
    }
  }

  print("***************");

  print("Choose your number ?");
  int? number = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= number; i++) {
    if (i % 2 == 0) {
      print("Number($i) : is even");
    } else {
      print("Number($i) : is odd");
    }
  }
}
