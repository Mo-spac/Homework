import 'dart:io';

void main() {
  print('Enter a string:');
  String stringInput = stdin.readLineSync() ?? '';

  Map<String, int> vowelCounts = {
    'a': 0,
    'e': 0,
    'i': 0,
    'o': 0,
    'u': 0,
  };
  for (var char in stringInput.toLowerCase().split('')) {
    if (vowelCounts.containsKey(char)) {
      vowelCounts[char] = vowelCounts[char]! + 1;
    }
  }

  print("Vpwel count : ");
  vowelCounts.forEach((vowel, count) {
    print("$vowel : $count");
  });
}
