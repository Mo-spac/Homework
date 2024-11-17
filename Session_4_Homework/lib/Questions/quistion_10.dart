import 'dart:io';

void main() {
  displayMessage("Welcome!");
  displayMessage("Hi!", repeatedName: 4);
  displayMessage("Hello!", name: "Ahmed");
  displayMessage("Nice!", name: "Ali", repeatedName: 3);

  print("\n*****************\n");

  print("Enter the message:");
  String? message = stdin.readLineSync();

  print("Enter student name :");
  String? name = stdin.readLineSync();
  if (name!.isEmpty) name = null;

  print("Enter the number of times to repeat the message:");
  int? repeat = int.tryParse(stdin.readLineSync()!) ?? 1;

  displayMessage(message!, name: name, repeatedName: repeat);
  print("***********");
  // displayMessage(message, name: name);
  print("***********");
  // displayMessage(message, repeatedName: repeat);
  print("***********");
  displayMessage(message);
}

void readData() {
  print("Enter the message:");
  String? message = stdin.readLineSync();

  print("Enter student name :");
  String? name = stdin.readLineSync();
  if (name!.isEmpty) name = null;

  print("Enter the number of times to repeat the message:");
  int? repeat = int.tryParse(stdin.readLineSync()!) ?? 1;
}

void displayMessage(String message, {String? name, int repeatedName = 1}) {
  for (int i = 1; i <= repeatedName; i++) {
    if (name != null) {
      print("[$i] $message, $name!");
    } else {
      print("[$i] $message");
    }
  }
}

// void displayingMessage(String message, {String? name, int repeatedName = 1}) {
//   for (int i = 1; i <= repeatedName; i++) {
//     if (name != null) {
//       print("[$i] $message, $name!");
//     } else {
//       print("[$i] $message");
//     }
//   }
// }
