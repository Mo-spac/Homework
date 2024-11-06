void main() {
  String password = "secret";
  bool isWright = password == "secret";

  if (isWright) {
    print("Access granted");
  } else {
    print("Access denied");
  }
}
