void main(List<String> args) {
  const Person hikmat = Person("Hikmat", 22);
  const Person ali = Person("Hikmat", 22);

  print(hikmat == ali);
}

class Person {
  final String name;
  final int age;

  const Person(this.name, this.age);
}
