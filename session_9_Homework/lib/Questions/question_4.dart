void main() {
  User user1 = User("Mo", "momo2020@gmail.com", 25);
  User user2 = User("Ali", "ali2022@gmail.com", 15);

  print('${user1.name} is an adult: ${user1.isAdult()}');
  print('${user2.name} is an adult: ${user2.isAdult()}');
}

class User {
  String? name;
  String? email;
  int? age;
  User(this.name, this.email, this.age);

  bool isAdult() {
    return (age ?? 0) >= 18;
  }
}
