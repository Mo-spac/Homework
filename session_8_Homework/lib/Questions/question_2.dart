void main() {
  List<int> scores = [85, 72, 90, 66, 78];

  Map<int, String> scoreToGrade = {};
  for (var score in scores) {
    String grade;
    if (score >= 90) {
      grade = 'A';
    } else if (score >= 80) {
      grade = "B";
    } else if (score >= 70) {
      grade = "C";
    } else {
      grade = "D";
    }
    scoreToGrade[score] = grade;
  }
  print("Student Scores and Grades:");
  scoreToGrade.forEach((score, grade) {
    print("Score: $score - Grade: $grade");
  });
}
