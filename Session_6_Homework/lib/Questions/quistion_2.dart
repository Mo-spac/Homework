int processNumbers(List<int> numbers) {
  List<int> filteredNumbers = numbers.where((number) => number >= 5).toList();

  print("Numbers more than 5 is $filteredNumbers");
  List<int> squaredNumbers =
      filteredNumbers.map((number) => number * number).toList();
  print("Squared of numbers is $squaredNumbers");
  // filteredNumbers.forEach((num) => num * num);

  int sum = squaredNumbers.reduce((a, b) => a + b);

  return sum;
}

void main() {
  List<int> numbers = [2, 4, 6, 8, 10];
  int result = processNumbers(numbers);

  print("Sum of squared numbers = $result");
}
