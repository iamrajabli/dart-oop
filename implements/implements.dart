void main(List<String> args) {
  Dog klic = Dog();

  klic.bark();
}

abstract class Animal {}

abstract class AnimalFly {
  void fly();
}

abstract class AnimalBark {
  void bark();
}

abstract class AnimalRun {
  void run();
}

class Dog extends Animal implements AnimalBark, AnimalRun {
  void bark() {
    print("hav hav");
  }

  void run() {
    print("Run");
  }
}
