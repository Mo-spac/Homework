void main() {
  Animal hound = Dog();
  hound.describe();
  hound.makeSound();
  print("****************");
  Dog hound2 = Dog();
  hound2.describe();
  hound2.makeSound();
  hound2.run();
  print("****************");
  Greyhound greyhound = Greyhound();
  greyhound.describe();
  greyhound.makeSound();
  greyhound.run();
}

abstract class Animal {
  makeSound();

  void describe() {
    print("I am an animal.");
  }
}

mixin RunFast {
  run();
}

class Dog extends Animal with RunFast {
  @override
  makeSound() {
    print("Bark!");
  }

  @override
  run() {
    print('I run fast');
  }
}

class Greyhound extends Dog with RunFast {
  @override
  run() {
    print('I run very fast');
  }
}
