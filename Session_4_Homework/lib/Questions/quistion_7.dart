import 'dart:io';

void main() {
  int? score;
  // score= readScore();
  // //calculateGrade(score);
  // print(calculateGrade(score));
  do {
    score = readScore();
    if (score == null) {
      print("Enter your score!");
    }
  } while (score == null);
  print(calculateGrade(score));
}

int? readScore() {
  print("Enter the student's score (from 0 to 100)? ");
  int? score = int.tryParse(stdin.readLineSync()!);
  return score;
}

// void
String calculateGrade(int score) {
  if (score >= 90) {
    // print("A");
    return "A";
  } else if (score >= 75) {
    // print("B");
    return 'B';
  } else if (score >= 60) {
    // print("C");
    return 'C';
  } else if (score >= 50) {
    // print("E");
    return 'E';
  } else if (score >= 0) {
    // print("F");
    return 'F';
  } else {
    print("Score is negative, that is invalid!");
    return "Score is negative, that is invalid!";
  }
}
