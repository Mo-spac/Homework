import 'dart:io';

void main() {
  // readData();

  print("Enter the message:");
  String? message = stdin.readLineSync();

  print("Enter student name :");
  String? name = stdin.readLineSync();
  if (name!.isEmpty) name = null;

  print("Enter the number of times to repeat the message:");
  int? repeat = int.tryParse(stdin.readLineSync()!) ?? 1;

  displayMessage(message!, name: name, repeatedName: repeat);
}

// void readData() {
//   print("Enter the message:");
//   String? message = stdin.readLineSync();

//   print("Enter student name :");
//   String? name = stdin.readLineSync();
//   if (name!.isEmpty) name = null;

//   print("Enter the number of times to repeat the message:");
//   int? repeat = int.tryParse(stdin.readLineSync()!) ?? 1;
// }

void displayMessage(String message, {String? name, int repeatedName = 1}) {
  for (int i = 1; i <= repeatedName; i++) {
    if (name != null) {
      print("[$i] $name, $message!");
    } else {
      print("[$i] $message");
    }
  }
}





// void main() {
//   print("Enter the message:");
//   String? message = stdin.readLineSync();

//   print("Enter the name (or leave blank to skip):");
//   String? name = stdin.readLineSync();
//   if (name!.isEmpty) name = null;

//   print("Enter the number of times to repeat the message:");
//   int? repeat = int.tryParse(stdin.readLineSync()!) ?? 1;

//   displayMessage(message!, name: name, repeatedName: repeat);
// }

// void displayMessage(String message, {String? name, int repeatedName = 1}) {
//   for (int i = 1; i <= repeatedName; i++) {
//     if (name != null) {
//       print("[$i] $message, $name!");
//     } else {
//       print("[$i] $message");
//     }
//   }
// }

// void readData() {
//   print("Enter the message:");
//   String? message = stdin.readLineSync();

//   print("Enter student name :");
//   String? name = stdin.readLineSync();
//   if (name!.isEmpty) name = null;

//   print("Enter the number of times to repeat the message:");
//   int? repeat = int.tryParse(stdin.readLineSync()!) ?? 1;
// }




