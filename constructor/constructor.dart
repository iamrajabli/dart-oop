void main(List<String> args) {
  Person hikmat = Person(23, "Hikmat", "JS, Dart", false);

  print(hikmat.getInfo());
  print(hikmat.getSalary());
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

  String getInfo() {
    return "Hi ${this.name}! You are is ${this.stack} Developer and you are ${this.age}. Your birthday: ${this.getBirthYear(this.age!)}";
  }

  int getBirthYear(int age) {
    return 2022 - age;
  }

  int getSalary() {
    print(this.age);
    return this.age! * 15;
  }
}
