void main() {
  User user1 = User("Mohammed", "mom2030@gmail.com");
  user1.createdUser();
  user1.deletedUser();
}

mixin LoggerMixin {
  void log(String message) {
    print("LOG: $message");
  }
}

class User with LoggerMixin {
  String name;
  String email;
  User(this.name, this.email);

  void createdUser() {
    log("User created:");
    print("User created by: $name , Email: $email");
  }

  void deletedUser() {
    log("User deleted:");
    print("User deleted: $name , Email: $email");
  }
}
