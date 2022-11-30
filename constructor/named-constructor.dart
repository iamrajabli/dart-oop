void main(List<String> args) {
  Person hikmat = Person.customNamedConstructor(23, false);

  print(hikmat.getCustomInfo());
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

  // Named constructor
  Person.customNamedConstructor(int age, bool isMarried) {
    this.age = age;
    this.isMarried = isMarried;
  }

  Map<String, dynamic> getCustomInfo() {
    return {"age": this.age, "isMarried": this.isMarried};
  }

  String getInfo() {
    return "Hi ${this.name}! You are is ${this.stack} Developer and you are ${this.age}. Your birthday: ${this.getBirthYear(this.age!)}";
  }

  int getBirthYear(int age) {
    return 2022 - age;
  }
}
