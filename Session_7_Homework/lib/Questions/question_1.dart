void main() {
  List<int> nums = [5, 12, 7, 3, 18];

  print(calculateStats(nums));
}

String calculateStats(List<int> numbers) {
  int sum = numbers.reduce((firdtN, followN) => firdtN + followN);
  int sumNums = numbers.fold(0, (firdtN, followN) => firdtN + followN);
  int max =
      numbers.reduce((firdtN, followN) => firdtN > followN ? firdtN : followN);
  int min =
      numbers.reduce((firdtN, followN) => firdtN < followN ? firdtN : followN);

  return 'Sum= $sum, Max number: $max, Mini number: $min';
}
