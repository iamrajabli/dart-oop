void main(List<String> args) {
  Person hikmat =
      Person.customFactoryConstructor(19, "Hikmat", "JS, Dart", false);

  print(hikmat.getInfo());
}

class Person {
  int? age;
  String? name;
  String? stack;
  bool? isMarried;

  // Constructor
  Person(int age, String name, String stack, bool isMarried) {
    this.age = age;
    this.name = name;
    this.stack = stack;
    this.isMarried = isMarried;
  }

  // Factory Constructor
  factory Person.customFactoryConstructor(
      int age, String name, String stack, bool isMarried) {
    if (age < 20) {
      return Person(21, name, stack, isMarried);
    } else
      return Person(age, name, stack, isMarried);
  }

  String getInfo() {
    return "Hi ${this.name}! You are is ${this.stack} Developer and you are ${this.age}. Your birthday: ${this.getBirthYear(this.age!)}";
  }

  int getBirthYear(int age) {
    return 2022 - age;
  }
}
