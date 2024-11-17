void main() {
  String? message;

  print(message ?? "Try again later");

  message = "Enter your data";
  print(message ?? "Try again later");
}
