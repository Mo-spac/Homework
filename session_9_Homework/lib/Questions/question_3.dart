import 'dart:io';

void main() {
  for (var i = 1; i <= 5; i++) {
    for (var j = 1; j <= 5; j++) {
      if (i % 2 == 0 || j % 2 == 0) {
        continue;
      }
      int result = i * j;
      stdout.write(result.toString().padLeft(4));
    }
    print('\n');
  }
}
