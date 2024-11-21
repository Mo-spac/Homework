void main() {
  List<String?> names = ["john", null, "alice", "bob"];
  String result = formatNames(names);
  print(result);
}

String formatNames(List<String?> names) {
  return names
      .where((name) => name != null)
      .map((name) => name!.substring(0, 1).toUpperCase() + name.substring(1))
      .join(", ");
}
