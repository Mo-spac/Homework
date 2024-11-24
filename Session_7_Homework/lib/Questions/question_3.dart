void main() {
  List<int> nums = [10, 3, 45, 7];
  print(findLargest(nums));
}

int? findLargest(List<int>? numbers) {
  if (numbers == null || numbers.isEmpty) {
    return null;
  }
  return numbers
      .reduce((firdtN, followN) => firdtN > followN ? firdtN : followN);
}
