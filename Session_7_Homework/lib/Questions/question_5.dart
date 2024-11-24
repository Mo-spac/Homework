void main() {
  Parrot parrot = Parrot();
  parrot.fly();
  parrot.chirp();
}

abstract class Bird {
  void chirp() {
    print("Chirp chirp!");
  }
}

mixin Fly {
  fly() {
    print("I can fly!");
  }
}

class Parrot extends Bird with Fly {
  @override
  void chirp() {
    print("Parrot is chirping!");
  }
}
