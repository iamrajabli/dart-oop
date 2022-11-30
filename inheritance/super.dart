void main(List<String> args) {
  Director director = Director("hikmat", 23);
  print(director.getInfo());

  Admin admin = Admin("turkan", 22);
  print(admin.getInfo());
  print(admin.getSuperInfo());
}

class Director {
  String name;
  int age;
  bool isMarried = true;

  Director(this.name, this.age);

  String getInfo() {
    return "name: ${this.name}, age: ${this.age}";
  }
}

class Admin extends Director {
  Admin(String name, int age) : super(name, age);

  bool getSuperInfo() {
    return super.isMarried;
  }
}
