void main() {
  List<int> numbers = [2, 4, 6, 8];
  print(numbers);
  numbers.addAll([10, 12, 14]);
  print(numbers);
  numbers.remove(14);
  print(numbers);

  Set<String> names = {"Ahmed", "Ali", "Mohammed", "Ali", "Kareem"};
  print(names);

  Map<String, int> students = {
    "Mohammed": 97,
    "Ahmed": 95,
    "Ali": 92,
    "KAreem": 96,
  };
  print(students.keys);

  students.forEach(
    (key, value) {
      print('$key\'s grade: $value}');
    },
  );
  print('\'s grade: ${students["Mohammed"]}'); // I can't get key lonly
}
// for in
